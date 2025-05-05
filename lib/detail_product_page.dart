import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_page.dart';

class ProductDetailPage extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail', style: GoogleFonts.roboto()),
        actions: [
          IconButton(icon: const Icon(Icons.share),
          onPressed: (){

          },
          ),
          IconButton(icon: const Icon(Icons.favorite_border),
          onPressed: () {
            
          },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    color: Colors.grey[200],
                    child: Image.network(
                      product['image'],
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product['title'],
                          style: GoogleFonts.roboto(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),

                        Text(
                          'Type: furniture bagus bisa terbang', 
                          style: GoogleFonts.roboto(color: Colors.grey[600]),
                        ),
                        const SizedBox(height: 8),
                        
                        Row(
                          children: [
                            Text('furniture gilek', style: GoogleFonts.roboto(fontWeight: FontWeight.bold)),
                            const SizedBox(width: 8),
                            const Icon(Icons.verified, color: Colors.blue, size: 16),
                            const SizedBox(width: 4),
                            Text('homedaily', style: GoogleFonts.roboto(color: Colors.blue)),
                          ],
                        ),
                        const SizedBox(height: 16),

                        Text(
                          'Rp. 2,499.99', 
                          style: GoogleFonts.roboto(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                        const SizedBox(height: 24),

                        Text(
                          'Overview',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          product['description'] + ' pokok nya  baranng yang di jual di markettplace ini bagus gilek',
                          style: GoogleFonts.roboto(fontSize: 16, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.grey[300]!),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.orange),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatPage(product: product),
                        )
                      );
                    },
                    child: Text(
                      'Ask Seller',
                      style: GoogleFonts.roboto(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Add to Cart',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}