import 'package:flutter/material.dart';
import 'DateWidget.dart';
import 'Text.dart';
import 'dialog.dart';
import 'dialog.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TugasKU!"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.home),
        ),
        actions: [
          const Text("Sultan Muhammad Adji Pratama"),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 0, 153, 255),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            margin: const EdgeInsets.all(50),
            height: 200,
            width: 2100,
            alignment: Alignment.center,
            color: Colors.white,
            child: const Center(
              child: Text(
                "Kamu Belum ada tugas !!",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.white),
              ),
            ),
          ),
          // DIALOGWIDGET(),
          // TextInput(),
        const Didget(title: "tanggal")
          // Stack()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Person",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Task",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Store"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Increment Value",
        child: const Icon(Icons.plus_one),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
