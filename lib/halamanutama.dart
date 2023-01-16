import 'package:aplikasi_perhitungan_luas_persegi_dan_lingkaran/halamanhitunglingkaran.dart';
import 'package:aplikasi_perhitungan_luas_persegi_dan_lingkaran/halamanhitungpersegi.dart';
import 'package:aplikasi_perhitungan_luas_persegi_dan_lingkaran/profildeveloper.dart';
import 'package:flutter/material.dart';

class halamanutama extends StatelessWidget {
  const halamanutama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.view_list_rounded),
          title: Text("Halaman Utama",
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
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
                  Route pindah = MaterialPageRoute(
                      builder: (context) => halamanhitungpersegi());
                  Navigator.push(context, pindah);
                },
                icon: Icon(Icons.square_rounded),
                label: Text(
                  "Perhitungan Luas Persegi",
                  style: TextStyle(fontSize: 23),
                ),
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    onSurface: Colors.green,
                    shadowColor: Colors.white,
                    minimumSize: Size(200, 40),
                    animationDuration: Duration(milliseconds: 200),
                    elevation: 2,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Route pindah = MaterialPageRoute(
                        builder: (context) => halamanhitunglingkaran());
                    Navigator.push(context, pindah);
                  },
                  icon: Icon(Icons.circle_rounded),
                  label: Text(
                    'Perhitungan Luas Lingkaran',
                    style: TextStyle(fontSize: 23),
                  )),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    onPrimary: Colors.white,
                    onSurface: Colors.blue,
                    shadowColor: Colors.white,
                    minimumSize: Size(200, 40),
                    animationDuration: Duration(milliseconds: 200),
                    elevation: 2,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Route pindah = MaterialPageRoute(
                        builder: (context) => profildeveloper());
                    Navigator.push(context, pindah);
                  },
                  icon: Icon(Icons.people_alt_rounded),
                  label: Text(
                    'Profil Developer',
                    style: TextStyle(fontSize: 23),
                  )),
            ],
          ),
        ));
  }
}
