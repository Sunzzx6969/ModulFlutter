import 'package:flutter/material.dart';

class Datewidget extends StatefulWidget {
  const Datewidget({super.key, required this.title});
  final String title;

  @override
  State<Datewidget> createState() => _DatewidgetState();
}

class _DatewidgetState extends State<Datewidget> {
  DateTime selectedDate = DateTime.now();
  Future<Null> _selectedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2201));
    if (picked != Null && picked != selectedDate) {
      setState(() {
        selectedDate = picked!;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("${selectedDate.toLocal()}".split(" ")[0]),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              _selectedDate(context);
              print(selectedDate.day + selectedDate.month + selectedDate.year);
            },
            child: Text("Pilih Tanggal"),
          )
        ],
      ),
    );
  }
}
