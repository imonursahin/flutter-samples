import 'package:socialos/gonderikarti.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            ),
            onPressed: () {}),
        title: Text(
          "socialos",
          style: TextStyle(fontSize: 20.0, color: Colors.grey),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.grey[500],
                size: 32.0,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 100.0,
            decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
              BoxShadow(
                  color: Colors.grey, offset: Offset(0.0, 3.0), blurRadius: 5.0)
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profikkartiolustur("Onur",
                    "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg"),
                profikkartiolustur("Şahin",
                    "https://cdn.pixabay.com/photo/2020/09/27/23/39/cow-5608144__340.jpg"),
                profikkartiolustur("Belma",
                    "https://cdn.pixabay.com/photo/2020/10/04/10/43/horse-5625922__340.jpg"),
                profikkartiolustur("Yıldız",
                    "https://cdn.pixabay.com/photo/2020/08/21/08/46/african-5505598__340.jpg"),
                profikkartiolustur("Bella",
                    "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814__340.jpg"),
                profikkartiolustur("Kaan",
                    "https://cdn.pixabay.com/photo/2014/09/17/20/03/profile-449912__340.jpg"),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2019/11/29/21/30/girl-4662158__340.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2016/02/18/22/16/tent-1208201__340.jpg",
            isimSoyad: "Hakan Yıldız",
            gecenSure: "1 sene önce",
            aciklama: "Mutlu bir günden geriye kalan",
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2015/08/05/04/02/people-875597__340.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2015/01/31/10/26/monument-valley-618363__340.jpg",
            isimSoyad: "Onur Şahin",
            gecenSure: "1 saat önce",
            aciklama: "Süper manzaraaaaaaa!",
          ),
        ],
      ),
    );
  }

  Widget profikkartiolustur(String kullaniciAdi, String resimLinki) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return ProfilSayfasi();
          }));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.topRight,
                children: <Widget>[
                  Container(
                    width: 70.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2.0, color: Colors.grey),
                        borderRadius: BorderRadius.circular(35.0),
                        image: DecorationImage(
                            image: NetworkImage(resimLinki),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  )
                ],
              ),
              SizedBox(height: 4.0),
              Text(
                kullaniciAdi,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Anasayfaya dön"))),
    );
  }
}
