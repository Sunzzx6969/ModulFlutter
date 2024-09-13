import 'package:flutter/material.dart';

class DIALOGWIDGET extends StatelessWidget {
  const DIALOGWIDGET({super.key});

  @override
  Widget build(BuildContext context) {
    return const Mylayout();
  }
}

class Mylayout extends StatelessWidget {
  const Mylayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: const Text("Show Alert"),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  Widget okButton = ElevatedButton(
    child: const Text("OK"),
    onPressed: () {},
  );

  AlertDialog alert = AlertDialog(
    title: const Text("My Title"),
    content: const Text("This is my massage"),
    actions: [okButton],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
