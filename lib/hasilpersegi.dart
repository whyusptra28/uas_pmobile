import 'package:aplikasi_perhitungan_luas_persegi_dan_lingkaran/halamanhitungpersegi.dart';
import 'package:flutter/material.dart';

class hasilpersegi extends StatelessWidget {
  hasilpersegi({
    required this.panjang,
    required this.lebar,
  });
  final int panjang;
  final int lebar;

  @override
  Widget build(BuildContext context) {
    double hasil = (panjang * lebar * 1.0);

    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Luas Persegi",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              'Luas Persegi Adalah',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              ' $hasil ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
