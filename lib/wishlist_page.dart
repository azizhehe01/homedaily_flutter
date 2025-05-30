// import 'package:flutter/material.dart';
// import 'home_page.dart';
// import 'explore_page.dart';
// import 'cart.dart';
// import 'profile_page.dart';
// import 'detail_product_page.dart';
// import 'transaction.dart';

// class WishlistPage extends StatefulWidget {
//   const WishlistPage({super.key});

//   @override
//   State<WishlistPage> createState() => _WishlistPageState();
// }

// class _WishlistPageState extends State<WishlistPage> {
//   final List<Map<String, String>> products = [
//     {
//       'image': 'https://images.unsplash.com/photo-1555041469-a586c61ea9bc',
//       'title': 'Comfortable Sofa',
//       'price': 'Rp 3.500.000',
//       'description': 'Premium quality sofa with ergonomic design',
//     },
//     {
//       'image': 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7',
//       'title': 'Modern Chair',
//       'price': 'Rp 1.200.000',
//       'description': 'Sleek and stylish chair for your home',
//     },
//     {
//       'image': 'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c',
//       'title': 'Wooden Table',
//       'price': 'Rp 2.800.000',
//       'description': 'Solid wood dining table with 6 chairs',
//     },
//     {
//       'image': 'https://images.unsplash.com/photo-1555041469-a586c61ea9bc',
//       'title': 'Comfortable Chair',
//       'price': 'Rp 3.500.000',
//       'description': 'Premium quality sofa with ergonomic design',
//     },
//     {
//       'image': 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7',
//       'title': 'Modern Sofa',
//       'price': 'Rp 1.200.000',
//       'description': 'Sleek and stylish chair for your home',
//     },
//     {
//       'image': 'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c',
//       'title': 'Wooden Dining Table',
//       'price': 'Rp 2.800.000',
//       'description': 'Solid wood dining table with 6 chairs',
//     },
//   ];

//   List<Map<String, String>> filteredProducts = [];
//   final TextEditingController _searchController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     filteredProducts = List.from(products);
//   }

//   void _searchProducts(String query) {
//     setState(() {
//       if (query.isEmpty) {
//         filteredProducts = List.from(products);
//       } else {
//         filteredProducts =
//             products
//                 .where(
//                   (product) => product['title']!.toLowerCase().contains(
//                     query.toLowerCase(),
//                   ),
//                 )
//                 .toList();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'My Wishlist',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.orange,
//       ),
//       body: Column(
//         children: [
//           // Search and item count
//           Container(
//             padding: const EdgeInsets.all(16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   '${filteredProducts.length} Items in Wishlist',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.grey[700],
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.search),
//                   onPressed: () {
//                     showSearch(
//                       context: context,
//                       delegate: ProductSearchDelegate(products),
//                     );
//                   },
//                   color: Colors.grey[600],
//                 ),
//               ],
//             ),
//           ),
//           // Wishlist Items
//           Expanded(
//             child: ListView.builder(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               itemCount: filteredProducts.length,
//               itemBuilder: (context, index) {
//                 final product = filteredProducts[index];
//                 return WishlistItemCard(
//                   image: product['image']!,
//                   title: product['title']!,
//                   price: product['price']!,
//                   description: product['description']!,
//                   onRemove: () {
//                     setState(() {
//                       products.removeWhere(
//                         (p) => p['title'] == product['title'],
//                       );
//                       filteredProducts.removeWhere(
//                         (p) => p['title'] == product['title'],
//                       );
//                     });
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.receipt_long),
//             label: 'Transaksi',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Cart',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border),
//             label: 'Wishlist',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: 4,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//         onTap: (index) {
//           if (index == 0) {
//             // Home index
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const HomePage()),
//             );
//           } else if (index == 1) {
//             // Explore index
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const ExplorePage()),
//             );
//           } else if (index == 2) {
//             // Cart index
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const TransactionPage()),
//             );
//           } else if (index == 3) {
//             // Cart index
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const CartPage()),
//             );
//           } else if (index == 4) {
//             // Cart index
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const WishlistPage()),
//             );
//           } else if (index == 5) {
//             // Cart index
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => const ProfilePage()),
//             );
//           }
//         },
//       ),
//     );
//   }
// }

// class ProductSearchDelegate extends SearchDelegate {
//   final List<Map<String, String>> products;

//   ProductSearchDelegate(this.products);

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, null);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     final results =
//         products
//             .where(
//               (product) =>
//                   product['title']!.toLowerCase().contains(query.toLowerCase()),
//             )
//             .toList();

//     return _buildSearchResults(results);
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestions =
//         products
//             .where(
//               (product) =>
//                   product['title']!.toLowerCase().contains(query.toLowerCase()),
//             )
//             .toList();

//     return _buildSearchResults(suggestions);
//   }

//   Widget _buildSearchResults(List<Map<String, String>> results) {
//     return ListView.builder(
//       itemCount: results.length,
//       itemBuilder: (context, index) {
//         final product = results[index];
//         return ListTile(
//           leading: Image.network(
//             product['image']!,
//             width: 50,
//             height: 50,
//             fit: BoxFit.cover,
//           ),
//           title: Text(product['title']!),
//           subtitle: Text(product['price']!),
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (_) => ProductDetailPage(product: product),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }

// class WishlistItemCard extends StatelessWidget {
//   final String image;
//   final String title;
//   final String price;
//   final String description;
//   final VoidCallback? onRemove;

//   const WishlistItemCard({
//     super.key,
//     required this.image,
//     required this.title,
//     required this.price,
//     required this.description,
//     this.onRemove,
//   });

//   void _showDeleteOptions(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Container(
//           padding: const EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.1),
//                 spreadRadius: 1,
//                 blurRadius: 5,
//               ),
//             ],
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ListTile(
//                 leading: Container(
//                   padding: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.orange.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: const Icon(Icons.info_outline, color: Colors.orange),
//                 ),
//                 title: const Text(
//                   'View Product Details',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 onTap: () {
//                   Navigator.pop(context);
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder:
//                           (_) => ProductDetailPage(
//                             product: {
//                               'image': image,
//                               'title': title,
//                               'price': price,
//                               'description': description,
//                             },
//                           ),
//                     ),
//                   );
//                 },
//               ),
//               ListTile(
//                 leading: Container(
//                   padding: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.orange.withOpacity(0.1),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: const Icon(Icons.delete_outline, color: Colors.orange),
//                 ),
//                 title: const Text(
//                   'Remove from Wishlist',
//                   style: TextStyle(
//                     fontFamily: 'Poppins',
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 onTap: () {
//                   Navigator.pop(context);
//                   onRemove?.call();
//                 },
//               ),
//               const SizedBox(height: 8),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     foregroundColor: Colors.grey,
//                     padding: const EdgeInsets.symmetric(vertical: 16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       side: BorderSide(color: Colors.grey.shade300),
//                     ),
//                   ),
//                   onPressed: () => Navigator.pop(context),
//                   child: const Text(
//                     'Cancel',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16),
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 1,
//             blurRadius: 5,
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(8),
//             child: Image.network(
//               image,
//               width: 80,
//               height: 80,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(width: 12),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   price,
//                   style: const TextStyle(
//                     fontFamily: 'Poppins',
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.orange,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           IconButton(
//             icon: const Icon(Icons.more_vert, size: 24),
//             onPressed: () => _showDeleteOptions(context),
//             color: Colors.grey[600],
//           ),
//         ],
//       ),
//     );
//   }
// }
