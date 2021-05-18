import 'package:flutter/material.dart';
// kimlik doğrulama eklentisini yükleme
import 'package:local_auth/local_auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Parmak İzi Doğrulaması'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // localauthentication sınıfı oluşturuldu
  final LocalAuthentication _localAuthentication = LocalAuthentication();
  //cihazınızın kimlik doğrulama araçlarını destekleyip desteklemediğini görmek için değişken
  // parmak izi veya yüz tanıma sensörü var mı yok mu
  bool _hasFingerPrintSupport = false;
  String _authorizedOrNot = "Not Authorized";
  List<BiometricType> _availableBuimetricType = List<BiometricType>();

  Future<void> _getBiometricsSupport() async {
    // cihazınızın parmak izi desteği olup olmadığını kontrol eder
    bool hasFingerPrintSupport = false;
    try {
      hasFingerPrintSupport = await _localAuthentication.canCheckBiometrics;
    } catch (e) {
      print(e);
    }
    if (!mounted) return;
    setState(() {
      _hasFingerPrintSupport = hasFingerPrintSupport;
    });
  }

  Future<void> _getAvailableSupport() async {
    // cihazın mevcut tüm biyometrik desteklerini getirir
    List<BiometricType> availableBuimetricType = List<BiometricType>();
    try {
      availableBuimetricType =
          await _localAuthentication.getAvailableBiometrics();
    } catch (e) {
      print(e);
    }
    if (!mounted) return;
    setState(() {
      _availableBuimetricType = availableBuimetricType;
    });
  }

  Future<void> _authenticateMe() async {
    // parmak izi kimlik doğrulaması için bir iletişim kutusu açar.
    // bir iletişim kutusu oluşturmanıza gerek yok.
    bool authenticated = false;
    try {
      authenticated = await _localAuthentication.authenticateWithBiometrics(
        localizedReason: "Parmak izi test",
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } catch (e) {
      print(e);
    }
    if (!mounted) return;
    setState(() {
      _authorizedOrNot = authenticated ? "Authorized" : "Not Authorized";
    });
  }

  @override
  void initState() {
    _getBiometricsSupport();
    _getAvailableSupport();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text("Parmak izi desteği : $_hasFingerPrintSupport"),
          Text("Biyometrik türü: ${_availableBuimetricType.toString()}"),
          Text(" $_authorizedOrNot"),
          Center(
            child: RaisedButton(
              child: Text("DOĞRULAMA"),
              color: Colors.amber,
              onPressed: _authenticateMe,
            ),
          ),
        ],
      ),
    );
  }
}
