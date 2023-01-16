import 'package:aplikasi_perhitungan_luas_persegi_dan_lingkaran/hasilpersegi.dart';
import 'package:flutter/material.dart';

class halamanhitungpersegi extends StatefulWidget {
  @override
  State<halamanhitungpersegi> createState() => _halamanhitungpersegiState();
}

class _halamanhitungpersegiState extends State<halamanhitungpersegi> {
  int panjang = 0;
  int lebar = 0;

  var _nama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hitung Luas Persegi",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            panjang = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Panjang",
                            suffix: Text('cm'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            filled: true,
                            hintText: 'Panjang'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            lebar = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Lebar",
                            suffix: Text('cm'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            filled: true,
                            hintText: 'Lebar'),
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                      onSurface: Colors.red,
                      shadowColor: Colors.white,
                      minimumSize: Size(200, 40),
                      animationDuration: Duration(milliseconds: 200),
                      elevation: 2,
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      var Route = MaterialPageRoute(
                        builder: (BuildContext) =>
                            hasilpersegi(panjang: panjang, lebar: lebar),
                      );
                      Navigator.of(context).push(Route);
                    },
                    child: Text(
                      "Hitung",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
