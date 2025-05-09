import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_product_page.dart';
import 'home_page.dart';
import 'explore_page.dart';
import 'cart.dart';
import 'profile_page.dart';
import 'wishlist_page.dart';
import 'transaction.dart';

class ViewAllProduk extends StatelessWidget {
  ViewAllProduk({super.key});

  final List<Map<String, dynamic>> produkList = [
    {
      'image':
          'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=800',
      'title': 'Sofa Nyaman',
      'description': 'Sofa empuk dan mewah',
      'price': 'Rp. 1,499.000',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800',
      'title': 'Lampu Gantung',
      'description': 'Lampu hias untuk ruang tamu',
      'price': 'Rp. 299.000',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?w=800',
      'title': 'Meja Kayu',
      'description': 'Meja kuat berbahan jati',
      'price': 'Rp. 2,199.000',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?w=800',
      'title': 'Kursi Elegan',
      'description': 'Kursi gaya klasik modern',
      'price': 'Rp. 850.000',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1519710164239-da123dc03ef4?w=800',
      'title': 'Rak Serbaguna',
      'description': 'Rak simpel untuk berbagai keperluan',
      'price': 'Rp. 650.000',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=800',
      'title': 'Sofa Nyaman',
      'description': 'Sofa empuk dan mewah',
      'price': 'Rp. 1,499.000',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800',
      'title': 'Lampu Gantung',
      'description': 'Lampu hias untuk ruang tamu',
      'price': 'Rp. 299.000',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?w=800',
      'title': 'Meja Kayu',
      'description': 'Meja kuat berbahan jati',
      'price': 'Rp. 2,199.000',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?w=800',
      'title': 'Kursi Elegan',
      'description': 'Kursi gaya klasik modern',
      'price': 'Rp. 850.000',
    },
    {
      'image':
          'https://images.unsplash.com/photo-1519710164239-da123dc03ef4?w=800',
      'title': 'Rak Serbaguna',
      'description': 'Rak simpel untuk berbagai keperluan',
      'price': 'Rp. 650.000',
    },
  ];

  void _showProductMenu(BuildContext context, Map<String, dynamic> product) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.share, color: Colors.orange),
                ),
                title: Text(
                  'Share',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Add share functionality here
                },
              ),
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.orange,
                  ),
                ),
                title: Text(
                  'Add to Wishlist',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Add wishlist functionality here
                },
              ),
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.info_outline, color: Colors.orange),
                ),
                title: Text(
                  'Product Detail',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProductDetailPage(product: product),
                    ),
                  );
                },
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'Cancel',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Semua Produk',
          style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: produkList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.68, // Adjusted slightly to prevent overflow
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final produk = produkList[index];
            return Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Image with fixed height
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                        child: Image.network(
                          produk['image'],
                          height: 110, // Reduced slightly to prevent overflow
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder:
                              (context, error, stackTrace) => Container(
                                height: 110,
                                color: Colors.grey[200],
                                child: const Icon(Icons.error),
                              ),
                        ),
                      ),

                      // Product Info with tighter padding
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 8, 10, 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              produk['title'],
                              style: GoogleFonts.roboto(
                                fontSize: 14, // Slightly smaller
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              produk['description'],
                              style: GoogleFonts.roboto(
                                fontSize: 11, // Slightly smaller
                                color: Colors.grey[600],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'Type: furniture bagus bisa terbang',
                              style: GoogleFonts.roboto(
                                fontSize: 9, // Slightly smaller
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Spacer to push price and creator to bottom
                      const Spacer(),

                      // Price and Creator Info Container
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              produk['price'],
                              style: GoogleFonts.roboto(
                                fontSize: 22, // Slightly smaller
                                fontWeight: FontWeight.bold,
                                color: Colors.orange[700],
                              ),
                            ),
                            const SizedBox(height: 4),
                            SizedBox(
                              height: 16, // Fixed height for creator row
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Row(
                                      children: [
                                        Text(
                                          'furniture gilek',
                                          style: GoogleFonts.roboto(
                                            fontSize: 9, // Slightly smaller
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                        const SizedBox(width: 2),
                                        const Icon(
                                          Icons.verified,
                                          size: 10, // Slightly smaller
                                          color: Colors.blue,
                                        ),
                                        const SizedBox(width: 2),
                                        Text(
                                          'homedaily',
                                          style: GoogleFonts.roboto(
                                            fontSize: 9, // Slightly smaller
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Empty space to balance menu button
                                  const SizedBox(width: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // Three-dot menu button
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: () => _showProductMenu(context, produk),
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.more_vert,
                          size: 14, // Slightly smaller
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            activeIcon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 0, // Set to 3 since Wishlist is the active page
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
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
