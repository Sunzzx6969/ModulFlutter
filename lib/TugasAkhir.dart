import 'package:flutter/material.dart';

class Newsbola extends StatelessWidget {
  const Newsbola({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsApp(),
    );
  }
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        title: Row(
          children: [
            Image.asset(
              'Aset/Logo.jpeg',
              height: 50,
            ),
            SizedBox(width: 8),
            Text('Bola ManUnited'),
          ],
        ),
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          // TabBar section
          Container(
            color: Color.fromARGB(255, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "BERITA TERBARU",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "PERTANDINGAN HARI INI",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          // Featured news section
          Expanded(
            child: ListView(
              children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Image(
                                  image: AssetImage('Aset/kontrak.jpeg'),
                                  width: 650,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "De Ligt dari Bayern Munchen ke Manchester United, Here we Go !",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                color: Color.fromARGB(255, 0, 0, 0),
                                padding: EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 10),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Transfer",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                color: Color.fromARGB(255, 0, 0, 0),
                                padding: EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 10),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Lucky Spin",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Container(
                                color: Color.fromARGB(255, 0, 0, 0),
                                padding: EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 10),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Buy Shirt",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // Other news items
                newsItem(
                  'Aset/Madueke.jpg',
                  'Chealsea Hattrick di gawang Wolves',
                  'Liga Inggris, Aug 25, 2024',
                ),
                newsItem(
                  'Aset/eze.jpg',
                  'Liverpool dan Manchester City Siap Saling Sikut Demi Boyong Eberechi Eze',
                  'Liga Inggris, Aug 27, 2024',
                ),
                newsItem(
                  'Aset/Raspod.jpg',
                  'Erik Ten Hag Diminta Coret Marcus Rashford untuk Laga Melawan Liverpool',
                  'Liga Inggris, Aug 27,2024',
                ),
                newsItem(
                  'Aset/tomi.jpg',
                  'Jual Scott McTominay, Manchester United Dinilai Lakukan Perjudian',
                  'Liga Inggris, Aug 27,2024',
                ),
                newsItem(
                  'Aset/mamar.jpg',
                  'Giorgi Mamardashvili dari Valencia ke Liverpool, Here We Go!',
                  'Liga Inggris, Aug 26,2024',
                ),
                newsItem(
                  'Aset/dezz.jpg',
                  'Man of the Match Liverpool vs Brentford: Luis Diaz',
                  'Liga Inggris, Aug 26,2024',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Siaran Bola',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  Widget newsItem(String imageUrl, String title, String subtitle) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey[500],
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.red),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1.0),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
      child: Row(
        children: [
          Image.network(
            imageUrl,
            width: 200,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
