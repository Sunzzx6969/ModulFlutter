import 'package:flutter/material.dart';

class Stack extends StatelessWidget {
  const Stack({super.key, required List<Widget> children});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh Stack Widget"),
        ),
        body: Stack(children: <Widget>[
          Container(
            color: Colors.green,
            child: Text(
              "satu",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            alignment: Alignment.bottomCenter,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            color: Colors.red,
            child: Text(
              "Dua",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            height: 400.0,
            width: 300.0,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            color: Colors.deepPurple,
            child: Text(
              "Tiga",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            height: 200.0,
            width: 200.0,
          )
        ]),
      ),
    );
  }
}
