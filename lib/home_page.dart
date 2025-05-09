import 'detail_product_page.dart';
import 'view_all_produk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cart.dart';
import 'explore_page.dart';
import 'wishlist_page.dart';
import 'profile_page.dart';
import 'transaction.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Product data list
  final List<Map<String, dynamic>> products = const [
    {
      'image':
          'https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHRhYmxlfGVufDB8fDB8fHww',
      'title': 'Meja',
      'description': 'bagus beut gilek',
      'price': 'Rp 1.500.000',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c29mYXxlbnwwfHwwfHx8MA%3D%3D',
      'title': 'Sofa Nyaman',
      'description': 'nyaman beut ni sofa',
      'price': 'Rp 3.500.000',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y2hhaXJ8ZW58MHx8MHx8fDA%3D',
      'title': 'Kursi Elegan',
      'description': 'absolute masa depan',
      'price': 'Rp 800.000',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bGFtcHxlbnwwfHwwfHx8MA%3D%3D',
      'title': 'Lampu Unik',
      'description': 'lampu aneh',
      'price': 'Rp 450.000',
    },
  ]; //ini isi data di konten yang ini prodduk

  final List<Map<String, dynamic>> service = const [
    {
      'image':
          'https://images.unsplash.com/photo-1711856168274-01d7f22fd847?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGhvbWUlMjBzZXJ2aWNlfGVufDB8fDB8fHww',
      'title': 'service pipa',
      'description': 'pipa yang rusak bisa bener kalo pake ini',
      'price': 'Rp 5000',
    },
    {
      'image':
          'https://plus.unsplash.com/premium_photo-1661758946219-dcf3e31e557d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fHNlcnZpY2V8ZW58MHx8MHx8fDA%3D',
      'title': 'buatin kopi',
      'description': 'bangun tidut langsung ngopi seger nyooo',
      'price': 'Rp 500',
    },

    {
      'image':
          'https://plus.unsplash.com/premium_photo-1664301014580-9d9941d1fb51?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjF8fHNlcnZpY2V8ZW58MHx8MHx8fDA%3D',
      'title': 'lap meja',
      'description': 'meja langsung kinclong',
      'price': 'Rp 500',
    },

    {
      'image':
          'https://images.unsplash.com/photo-1516788875874-c5912cae7b43?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fHNlcnZpY2V8ZW58MHx8MHx8fDA%3D',
      'title': 'bawa minuman',
      'description': 'di bawain minuman jadi ga cape',
      'price': 'Rp 500',
    },
  ]; // yang ini isi konten tentang jasa

  Widget _buildProductCard(BuildContext context, Map<String, dynamic> product) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => ProductDetailPage(
                  product: {
                    'image': product['image'],
                    'title': product['title'],
                    'description': product['description'],
                    'price': product['price'], // Add this line
                  },
                ),
          ),
        );
      },
      child: AspectRatio(
        aspectRatio:
            0.75, // Ubah rasio sesuai kebutuhan (misal 1 untuk persegi)
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3, // Bagian gambar mengambil 3 bagian dari total
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  child: Image.network(
                    product['image'],
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 2, // Bagian teks mengambil 2 bagian dari total
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product['title'],
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        product['description'],
                        style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ), //ini card untu product dan jasa
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HomeDaily',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://media.istockphoto.com/id/2110826302/photo/living-room-with-cabinet-for-tv-on-dark-blue-color-wall-background.webp?a=1&b=1&s=612x612&w=0&k=20&c=OJPbDbgXZzlMBsP3O4XNB7PF1VAOIsFOmEjxRPdgS54=',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.orange.withOpacity(0.4),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ABSOLUTE FURNITURE',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '80% OFF',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      'apalag yang lo tunggu \n untuk ruang tengah mu',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 12,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'SHOP NOW',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // di atas ini batas code banner
            // Popular Items Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produk populer ni ges',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewAllProduk(),
                        ),
                      );
                    },
                    child: Text(
                      'View all',
                      style: GoogleFonts.roboto(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ), //ini untuk view all

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  for (int i = 0; i < products.length; i++)
                    Container(
                      width: 160,
                      margin: const EdgeInsets.only(right: 16),
                      child: _buildProductCard(context, products[i]),
                    ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  for (int i = products.length - 1; i >= 0; i--)
                    Container(
                      width: 160,
                      margin: const EdgeInsets.only(right: 16),
                      child: _buildProductCard(context, products[i]),
                    ),
                ],
              ),
            ),

            const SizedBox(height: 80),

            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://media.istockphoto.com/id/1457385092/photo/an-asian-young-technician-service-man-wearing-blue-uniform-checking-cleaning-air-conditioner.webp?a=1&b=1&s=612x612&w=0&k=20&c=kEAhA6blfC7fmtZCEWSFzca6UX8vx5MqBIKHvGFjD4g=',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.blue.withOpacity(0.4),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ABSOLUTE HOMESERVICE',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '80% OFF',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      'apalag yang lo tunggu \n untuk perawatan rumah tersayang',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 12,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'ORDER NOW',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ), //ini container untuk banner yang kedua

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produk populer ni ges',
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ViewAllProduk(),
                        ),
                      );
                    },
                    child: Text(
                      'View all',
                      style: GoogleFonts.roboto(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  for (int i = service.length - 1; i >= 0; i--)
                    Container(
                      width: 160,
                      margin: const EdgeInsets.only(right: 16),
                      child: _buildProductCard(context, service[i]),
                    ),
                ],
              ),
            ), //nah ini isi konten nya
          ], //ini childern jadi isi content disini semua
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
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
        currentIndex: 0,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          if (index == 1) {
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
