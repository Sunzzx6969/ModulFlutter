import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Container(
              child: Text(
                'DANA',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                print("Settings & Promo pressed");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.settings_outlined, color: Colors.purple),
                    SizedBox(width: 8),
                    Text(
                      'Promo',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Saldo Section (dana Cash)
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dana Cash =',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Icon(Icons.wallet_giftcard, color: Colors.white),
                            SizedBox(width: 5),
                            Text('1200 Points',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Rp 1.000.000.000',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildIconAction(
                            'Top Up', Icons.add_circle, Colors.white),
                        _buildIconAction(
                            'Transfer', Icons.arrow_forward, Colors.white),
                        _buildIconAction(
                            'Tarik Tunai', Icons.download, Colors.white),
                        _buildIconAction(
                            'History', Icons.history, Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Menu Section (Digital Wallet Features)
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildMenuItem('Top Up', Icons.account_balance_wallet,
                          Colors.purple),
                      _buildMenuItem('Transfer', Icons.send, Colors.blue),
                      _buildMenuItem('Withdraw', Icons.download, Colors.green),
                      _buildMenuItem('Pay Bills', Icons.receipt, Colors.orange),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildMenuItem(
                          'Purchase', Icons.shopping_bag, Colors.pink),
                      _buildMenuItem('QR Pay', Icons.qr_code, Colors.blue),
                      _buildMenuItem(
                          'Promotions', Icons.local_offer, Colors.red),
                      _buildMenuItem('More', Icons.more_horiz, Colors.grey),
                    ],
                  ),
                ],
              ),
            ),

            // Banner Section with horizontal scroll and images
            Container(
              margin: EdgeInsets.all(10),
              height: 200, // Bigger height for banner
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildBannerImage('Aset/Logo-PUBG-Mobile.png'),
                    _buildBannerImage('Aset/Gens.jpeg'),
                    _buildBannerImage('Aset/Anthony.jpeg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: 'Finance'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Pay'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildMenuItem(String title, IconData icon, Color color) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: color.withOpacity(0.1),
            child: Icon(icon, color: color, size: 30),
          ),
          SizedBox(height: 5),
          Text(title, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildBannerImage(String imagePath) {
    return InkWell(
      onTap: () {
        // Action ketika banner ditekan
      },
      child: Container(
        width: 250, // Adjusted width for larger image
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildIconAction(String title, IconData icon, Color color) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Icon(icon, color: color),
          SizedBox(height: 5),
          Text(title, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
