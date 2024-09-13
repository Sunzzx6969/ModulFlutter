import 'package:flutter/material.dart';

import 'package:flutter_application_3/ListView.dart';
import 'ColumnWidget.dart';
import 'DateWidget.dart';
import 'Text.dart';
import 'TugasAkhir.dart';
import 'dialog.dart';
import 'image_Widget.dart';
import 'scaffold.widget.dart';
import 'Stack.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  Newsbola());
  }
}
