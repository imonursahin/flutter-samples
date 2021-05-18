import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'İsim Bilgisi',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Telefon Bilgisi',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Adres Bilgisi',
              ),
            ),
          ),
          new MaterialButton(
              height: 60.0,
              minWidth: 200.0,
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              child: new Text("Kaydı Ekle"),
              onPressed: () => {
                    showDialog(
                        context: context,
                        builder: (_) => new AlertDialog(
                              title: new Text("Başarıyla Eklendi"),
                              content: new Text(
                                  "Bilgileri görmek için kayıtlar sayfasına bakın."),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('Kapat'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            ))
                  })
        ],
      ),
    );
  }
}
