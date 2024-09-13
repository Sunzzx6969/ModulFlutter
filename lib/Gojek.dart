import 'package:flutter/material.dart';

void main() {
  runApp(GojekCloneApp());
}

class GojekCloneApp extends StatelessWidget {
  const GojekCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: [
            Image.asset(
              'Aset/LogoKu.png', // Ganti dengan logo yang sesuai
              height: 40,
            ),
            const SizedBox(width: 20),
            const Text('AkuRide'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Aksi untuk notifikasi
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian Menu Utama
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildMenuItem(
                      context, 'AkuRide', Icons.motorcycle, Colors.orange),
                  _buildMenuItem(
                      context, 'AkuCar', Icons.directions_car, Colors.blue),
                  _buildMenuItem(
                      context, 'AkuFood', Icons.fastfood, Colors.red),
                  _buildMenuItem(
                      context, 'AkuSend', Icons.local_shipping, Colors.purple),
                  _buildMenuItem(context, 'AkuPay',
                      Icons.account_balance_wallet, Colors.teal),
                  _buildMenuItem(
                      context, 'AkuPulsa', Icons.phone_iphone, Colors.yellow),
                  _buildMenuItem(
                      context, 'AkuMart', Icons.shopping_basket, Colors.brown),
                  _buildMenuItem(context, 'AkuTix', Icons.movie, Colors.pink),
                  _buildMenuItem(
                      context, 'AkuMed', Icons.local_hospital, Colors.cyan),
                  _buildMenuItem(
                      context, 'AkuShop', Icons.shopping_cart, Colors.indigo),
                  _buildMenuItem(context, 'AkuDeals', Icons.local_offer,
                      Colors.deepOrange),
                  _buildMenuItem(
                      context, 'More', Icons.more_horiz, Colors.grey),
                ],
              ),
            ),
            const Divider(),

            // Bagian Promo
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Promotions',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  _buildPromoCard('Promo Title 1', 'assets/promo_image1.png'),
                  _buildPromoCard('Promo Title 2', 'assets/promo_image2.png'),
                  _buildPromoCard('Promo Title 3', 'assets/promo_image3.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
      BuildContext context, String title, IconData icon, Color color) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: IconButton(
            icon: Icon(icon, color: color, size: 30),
            onPressed: () {
              // Aksi ketika tombol ditekan
            },
          ),
        ),
        const SizedBox(height: 5),
        Text(title, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildPromoCard(String title, String imagePath) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Image.asset(
            imagePath, // Ganti dengan gambar promo yang sesuai
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
