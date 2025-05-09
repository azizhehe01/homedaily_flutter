import 'package:flutter/material.dart';
import 'home_page.dart';
import 'explore_page.dart';
import 'cart.dart';
import 'wishlist_page.dart';
import 'checkout.dart';
import 'profile_page.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'HomeDaily',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Tabs
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(title: 'Semua Status', isSelected: true),
                TabButton(title: 'Semua Produk', isSelected: false),
                TabButton(title: 'Semua Tanggal', isSelected: false),
              ],
            ),
          ),
          // Transaction List
          Expanded(
            child: ListView(
              children: [
                TransactionItem(
                  category: 'Furniture',
                  date: '11 Apr 2025',
                  productName: 'Meja',
                  totalPrice: 'Rp247.750',
                  status: 'Berhasil',
                  imageUrl:
                      'https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHRhYmxlfGVufDB8fDB8fHww', // Gambar dummy
                ),
                TransactionItem(
                  category: 'Lampu Unik',
                  date: '11 Mar 2025',
                  productName: 'Lampu Kuning Cantik',
                  totalPrice: 'Rp247.750',
                  status: 'Berhasil',
                  imageUrl:
                      'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bGFtcHxlbnwwfHwwfHx8MA%3D%3D', // Gambar dummy
                ),
                TransactionItem(
                  category: 'Belanja',
                  date: '9 Mar 2025',
                  productName: 'Sofa Nyaman',
                  totalPrice: 'Rp 2.757.000',
                  status: 'Selesai',
                  itemCount: '1 barang',
                  showReviewPrompt: false,
                  imageUrl:
                      'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c29mYXxlbnwwfHwwfHx8MA%3D%3D', // Gambar dummy
                ),
                TransactionItem(
                  category: 'Furniture',
                  date: '12 Feb 2025',
                  productName: 'Kursi Elegan',
                  totalPrice: 'Rp25.000',
                  status: 'Berhasil',
                  imageUrl:
                      'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y2hhaXJ8ZW58MHx8MHx8fDA%3D', // Gambar dummy
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: 2, // Transaksi aktif
        selectedItemColor: Colors.orange, // Ubah ke oranye
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        onTap: (index) {
          if (index == 0) {
            // Home index
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 1) {
            // Explore index
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ExplorePage()),
            );
          } else if (index == 2) {
            // Cart index
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TransactionPage()),
            );
          } else if (index == 3) {
            // Cart index
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()),
            );
          } else if (index == 4) {
            // Cart index
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WishlistPage()),
            );
          } else if (index == 5) {
            // Cart index
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          }
        },
      ),
    );
  }
}

// Widget untuk tombol tab
class TabButton extends StatelessWidget {
  final String title;
  final bool isSelected;

  TabButton({required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color:
                isSelected
                    ? Colors.orange
                    : Colors.transparent, // Ubah ke oranye
            width: 2,
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.black : Colors.grey,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}

// Widget untuk item transaksi
class TransactionItem extends StatelessWidget {
  final String category;
  final String date;
  final String productName;
  final String totalPrice;
  final String status;
  final String? itemCount;
  final bool showReviewPrompt;
  final String imageUrl; // Tambahkan properti untuk URL gambar

  TransactionItem({
    required this.category,
    required this.date,
    required this.productName,
    required this.totalPrice,
    required this.status,
    this.itemCount,
    this.showReviewPrompt = false,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 8),
                Text(category, style: TextStyle(fontSize: 14)),
                Spacer(),
                Text(date, style: TextStyle(fontSize: 14, color: Colors.grey)),
                SizedBox(width: 8),
                Text(
                  status,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.orange,
                  ), // Ubah ke oranye
                ),
                SizedBox(width: 8),
                Icon(Icons.more_vert, color: Colors.grey),
              ],
            ),
            SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Tambahkan gambar dummy
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 60,
                        height: 60,
                        color: Colors.grey[300],
                        child: Icon(Icons.broken_image, color: Colors.grey),
                      );
                    },
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (itemCount != null) ...[
                        SizedBox(height: 4),
                        Text(
                          itemCount!,
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Total Harga',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Spacer(),
                Text(
                  totalPrice,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            if (showReviewPrompt) ...[
              SizedBox(height: 8),
              Row(
                children: [
                  Text('', style: TextStyle(fontSize: 14, color: Colors.blue)),
                  Spacer(),
                  Row(
                    children: List.generate(
                      5,
                      (index) =>
                          Icon(Icons.star_border, size: 20, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ],
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Ubah ke oranye
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Beli Lagi'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
