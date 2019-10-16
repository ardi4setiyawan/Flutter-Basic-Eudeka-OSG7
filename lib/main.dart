import 'package:flutter/material.dart';

void main() {
  runApp(
    Dirgahayu(),
  );
}

class Dirgahayu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dirgahayu',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                'DIRGAHAYU \nREPUBLIK INDONESIA \nKE 74',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                'Ikuti keseruan lombanya!',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 170.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  buildColumn(
                      img: 'images/balapkarung.jpeg', judul: 'Balap Karung'),
                  buildColumn(
                      img: 'images/tariktambang.jpg', judul: 'Tarik Tambang'),
                  buildColumn(
                      img: 'images/makankerupuk.jpg', judul: 'Makan Kerupuk'),
                  buildColumn(img: 'images/merias.jpg', judul: 'Rias Wajah'),
                  Container(
                    child: Center(
                      child: Text(
                        'More..',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Rekomendasi Lomba',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
            ),
            buildColumnBig(
                img: 'images/balapkarung.jpeg',
                rate: '1945 Penilaian',
                judul: 'BALAP KARUNG',
                deskripsi:
                    'Balap Karung adalah perlombaan yang paling banyak digemari... (Lihat selengkapnya)'),
            buildColumnBig(
                img: 'images/makankerupuk.jpg',
                rate: '1920 Penilaian',
                judul: 'MAKAN KERUPUK',
                deskripsi:
                    'Nah, untuk lomba yang satu ini cocok banget buat kalian yang... (Lihat selengkapnya)'),
            buildColumnBig(
                img: 'images/tariktambang.jpg',
                rate: '1900 Penilaian',
                judul: 'TARIK TAMBANG',
                deskripsi:
                    'Tentu kita sudah tidak asing lagi dengan perlombaan yang satu ini... (Lihat selengkapnya)'),
            buildColumnBig(
                img: 'images/merias.jpg',
                rate: '1876 Penilaian',
                judul: 'RIAS WAJAH',
                deskripsi:
                    'Untuk kamu yang jago merias, kamu bisa ikutan lomba yang satu ini... (Lihat selengkapnya)'),
          ],
        ),
      ),
    );
  }

  Column buildColumnBig(
      {String img, String rate, String judul, String deskripsi}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(img, fit: BoxFit.cover),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 15.0,
                spreadRadius: 1.0,
                offset: Offset(0, 5),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.star, size: 22),
                    Icon(Icons.star, size: 22),
                    Icon(Icons.star, size: 22),
                    Icon(Icons.star_half, size: 22),
                    Icon(Icons.star_border, size: 22),
                    Text(
                      rate,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(Icons.share),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(judul,
                  style:
                      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
              Text(deskripsi),
            ],
          ),
        ),
      ],
    );
  }

  Column buildColumn({String img, String judul}) {
    return Column(
      children: <Widget>[
        Container(
          width: 150,
          height: 120,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(img, fit: BoxFit.cover),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 0.5,
                offset: Offset(0, 5),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          judul,
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
