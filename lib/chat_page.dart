import 'package:flutter/material.dart';
import 'chat_page_detail.dart';

class ChatListPage extends StatelessWidget {
  final List<Map<String, dynamic>> sellers = [
    {
      'name': 'Absolute Furniture',
      'image': 'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=800',
      'lastMessage': 'Sofa masih ready kak',
      'time': '10:30',
      'unread': 2,
      'product': {
        'title': 'Sofa Nyaman',
        'image': 'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=800',
        'price': 'Rp 1.499.000'
      }
    },
    {
      'name': 'Lighting Store',
      'image': 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800',
      'lastMessage': 'Lampu gantungnya ready stock',
      'time': '09:15',
      'unread': 0,
      'product': {
        'title': 'Lampu Gantung',
        'image': 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800',
        'price': 'Rp 299.000'
      }
    },
    {
      'name': 'Wooden Craft',
      'image': 'https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?w=800',
      'lastMessage': 'Meja kayunya bisa custom',
      'time': 'Yesterday',
      'unread': 1,
      'product': {
        'title': 'Meja Kayu',
        'image': 'https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?w=800',
        'price': 'Rp 2.199.000'
      }
    },
  ];

  ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chats',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: sellers.length,
        itemBuilder: (context, index) {
          final seller = sellers[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatPage(product: seller['product']),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  // Seller Image
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(seller['image']),
                  ),
                  const SizedBox(width: 16),
                  // Seller Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              seller['name'],
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              seller['time'],
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                seller['lastMessage'],
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (seller['unread'] > 0)
                              Container(
                                margin: const EdgeInsets.only(left: 8),
                                padding: const EdgeInsets.all(6),
                                decoration: const BoxDecoration(
                                  color: Colors.orange,
                                  shape: BoxShape.circle,
                                ),
                                child: Text(
                                  seller['unread'].toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}