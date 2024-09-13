import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextInput extends StatefulWidget {
  const TextInput({super.key});

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  TextEditingController Nickname = TextEditingController();
  TextEditingController Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          TextField(
            controller: Nickname,
            obscureText: false,
            onChanged: (a) {
              setState(() {});
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text("input Nama"),
            ),
          ),
          Text(Nickname.text),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: Password,
            obscureText: false,
            onChanged: (a) {
              setState(() {});
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              label: Text("input Password"),
            ),
          ),
          Text(Password.text),
        ],
      ),
    );
  }
}
