import 'package:aplikasi_perhitungan_luas_persegi_dan_lingkaran/halamanutama.dart';
import 'package:flutter/material.dart';

class profildeveloper extends StatelessWidget {
  const profildeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Developer",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 1.0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/foto saya.JPG'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5.0, 50.0, 5.0, 50.0),
              margin: EdgeInsets.fromLTRB(5.0, 2.0, 5.0, 30.0),
              height: 400,
              width: double.infinity,
              child: Card(
                child: Container(
                  color: Colors.blue[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20, right: 50, left: 70, bottom: 15),
                        child: Text(
                          'Biodata Developer',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Nama : Wahyu Saputra',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'NPM  : 2010020043',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Kelas  : 5A SI Non Reguler Banjarmasin',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'HP/WA  : 085251254403',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Alamat : Jl. Barito Gg 12 B No. 65 Kab. Kapuas Kalteng",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
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
                    Route pindah =
                        MaterialPageRoute(builder: (context) => halamanutama());
                    Navigator.push(context, pindah);
                  },
                  child: Text(
                    "Kembali Ke Halaman Utama",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
