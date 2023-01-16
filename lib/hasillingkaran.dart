import 'package:aplikasi_perhitungan_luas_persegi_dan_lingkaran/halamanhitunglingkaran.dart';
import 'package:flutter/material.dart';

class hasillingkaran extends StatelessWidget {
  hasillingkaran({
    required this.p,
    required this.r2,
  });
  final int p;
  final int r2;

  @override
  Widget build(BuildContext context) {
    double hasil = (3.14 * r2);

    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Luas Lingkaran",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green,
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
              'Luas Lingkaran Adalah',
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
