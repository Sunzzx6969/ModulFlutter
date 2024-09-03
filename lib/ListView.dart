import 'package:flutter/material.dart';

class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh ListView Widget"),
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.green,
              alignment: Alignment.topLeft,
              child: Text(
                "ListView widget digunakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Container(
              color: Colors.green,
              alignment: Alignment.topLeft,
              child: Text(
                "ListView widget digunakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              height: 400.0,
              width: 300.0,
            ),
            Container(
              color: Colors.green,
              alignment: Alignment.topLeft,
              child: Text(
                "ListView widget digunakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              height: 200.0,
              width: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
