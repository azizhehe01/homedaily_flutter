<<<<<<< Updated upstream
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'cart.dart';
import 'detail_product_page.dart';
=======
// import 'package:flutter/material.dart';
// import 'home_page.dart';
// import 'cart.dart';
// import 'detail_product_page.dart';
// import 'profile_page.dart';
// import 'wishlist_page.dart';
// import 'transaction.dart';
>>>>>>> Stashed changes

// class ExplorePage extends StatefulWidget {
//   const ExplorePage({super.key});

//   @override
//   State<ExplorePage> createState() => _ExplorePageState();
// }

<<<<<<< Updated upstream
class _ExplorePageState extends State<ExplorePage> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> filteredProducts = [];
  
  
  final List<Map<String, dynamic>> allProducts = const [
    {
      'image': 'https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHRhYmxlfGVufDB8fDB8fHww',
      'title': 'Meja',
      'description': 'bagus beut gilek',
      'price': 'Rp 1.500.000',
    },
    {
      'image': 'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c29mYXxlbnwwfHwwfHx8MA%3D%3D',
      'title': 'Sofa Nyaman',
      'description': 'nyaman beut ni sofa',
      'price': 'Rp 3.500.000',
    },
    {
      'image': 'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y2hhaXJ8ZW58MHx8MHx8fDA%3D',
      'title': 'Kursi Elegan',
      'description': 'absolute masa depan',
      'price': 'Rp 800.000',
    },
    {
      'image': 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bGFtcHxlbnwwfHwwfHx8MA%3D%3D',
      'title': 'Lampu Unik',
      'description': 'lampu aneh',
      'price': 'Rp 450.000',
    },
  ];

  @override
  void initState() {
    super.initState();
    filteredProducts = allProducts;
  }

  void _filterProducts(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredProducts = allProducts;
      } else {
        filteredProducts = allProducts
            .where((product) =>
                product['title'].toString().toLowerCase().contains(query.toLowerCase()) ||
                product['description'].toString().toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _searchController,
                      onChanged: _filterProducts,
                      style: const TextStyle(fontFamily: 'Poppins'),
                      decoration: InputDecoration(
                        hintText: 'Search products...',
                        hintStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey
                        ),
                        prefixIcon: const Icon(Icons.search, color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: filteredProducts.isEmpty
                  ? Center(
                      child: Text(
                        'No products found',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.all(16),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                      ),
                      itemCount: filteredProducts.length,
                      itemBuilder: (context, index) {
                        final product = filteredProducts[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailPage(
                                  product: {
                                    'image': product['image'],
                                    'title': product['title'],
                                    'description': product['description'],
                                    'price': product['price'],
                                  },
                                ),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(12),
                                  ),
                                  child: Image.network(
                                    product['image'],
                                    height: 120,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        product['title'],
                                        style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        product['price'],
                                        style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.orange,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        product['description'],
                                        style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explore',
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
        currentIndex: 1, // Set to 1 since this is Explore page
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          if (index == 0) { // Home index
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          }else if (index == 2) { // Home index
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const CartPage()),
            );
          }
          // Add other navigation cases as needed
        },
      ),
    );
  }
}
=======
// class _ExplorePageState extends State<ExplorePage> {
//   final TextEditingController _searchController = TextEditingController();
//   List<Map<String, dynamic>> filteredProducts = [];
//   String selectedFilter = 'Produk'; // Default filter

//   final List<Map<String, dynamic>> allProducts = [
//     {
//       'image': 'https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=800',
//       'title': 'Sofa Nyaman',
//       'description': 'Sofa empuk dan mewah',
//       'price': 'Rp. 1,499.000',
//     },
//     {
//       'image': 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800',
//       'title': 'Lampu Gantung',
//       'description': 'Lampu hias untuk ruang tamu',
//       'price': 'Rp. 299.000',
//     },
//     {
//       'image': 'https://images.unsplash.com/photo-1533090481720-856c6e3c1fdc?w=800',
//       'title': 'Meja Kayu',
//       'description': 'Meja kuat berbahan jati',
//       'price': 'Rp. 2,199.000',
//     },
//     {
//       'image': 'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?w=800',
//       'title': 'Kursi Elegan',
//       'description': 'Kursi gaya klasik modern',
//       'price': 'Rp. 850.000',
//     },
//     {
//       'image': 'https://images.unsplash.com/photo-1519710164239-da123dc03ef4?w=800',
//       'title': 'Rak Serbaguna',
//       'description': 'Rak simpel untuk berbagai keperluan',
//       'price': 'Rp. 650.000',
//     },
//   ];

//   final List<Map<String, dynamic>> serviceData = const [
//     {
//       'image': 'https://images.unsplash.com/photo-1711856168274-01d7f22fd847?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGhvbWUlMjBzZXJ2aWNlfGVufDB8fDB8fHww',
//       'title': 'service pipa',
//       'description': 'pipa yang rusak bisa bener kalo pake ini',
//       'price': 'Rp 5000',
//     },
//     {
//       'image' : 'https://plus.unsplash.com/premium_photo-1661758946219-dcf3e31e557d?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fHNlcnZpY2V8ZW58MHx8MHx8fDA%3D',
//       'title' : 'buatin kopi',
//       'description' : 'bangun tidut langsung ngopi seger nyooo',
//       'price' : 'Rp 500',
//     },
    
//     {
//       'image' : 'https://plus.unsplash.com/premium_photo-1664301014580-9d9941d1fb51?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjF8fHNlcnZpY2V8ZW58MHx8MHx8fDA%3D',
//       'title' : 'lap meja',
//       'description' : 'meja langsung kinclong',
//       'price' : 'Rp 500',
//     },

//     {
//       'image' : 'https://images.unsplash.com/photo-1516788875874-c5912cae7b43?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fHNlcnZpY2V8ZW58MHx8MHx8fDA%3D',
//       'title' : 'bawa minuman',
//       'description' : 'di bawain minuman jadi ga cape',
//       'price' : 'Rp 500',
//     },
//   ];

//   final List<String> searchHistory = [];

//   @override
//   void initState() {
//     super.initState();
//     filteredProducts = allProducts; 
//   }

//   //Funsi Mengelola Search history
//   void addToSearchHistory(String query) {
//     if (query.isNotEmpty) {
//       setState(() {
//         searchHistory.remove(query); 
//         searchHistory.insert(0, query); // Menambahkan Seearch history
//       });
//     }
//   }

//   // Modifikasi _filterProducts
//   void _filterProducts(String query) {
//     addToSearchHistory(query);
//     setState(() {
//       if (query.isEmpty) {
//         filteredProducts = selectedFilter == 'Produk' ? allProducts : serviceData;
//       } else {
//         final sourceData = selectedFilter == 'Produk' ? allProducts : serviceData;
//         filteredProducts = sourceData.where((item) =>
//           item['title'].toString().toLowerCase().contains(query.toLowerCase()) ||
//           item['description'].toString().toLowerCase().contains(query.toLowerCase())
//         ).toList();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[50],
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Explore',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//         backgroundColor: Colors.orange,
//         elevation: 0,
//       ),
//       body: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(16),
//             color: Colors.white,
//             child: Row(
//               children: [
//                 Expanded(
//                   flex: 3,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.grey[100],
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: TextField(
//                       controller: _searchController,
//                       onSubmitted: _filterProducts, 
//                       style: const TextStyle(fontFamily: 'Poppins'),
//                       decoration: InputDecoration(
//                         hintText: 'Pengen apa Brok...',
//                         hintStyle: const TextStyle(
//                           fontFamily: 'Poppins',
//                           color: Colors.grey,
//                         ),
//                         prefixIcon: const Icon(
//                           Icons.search,
//                           color: Colors.grey,
//                         ),
//                         border: InputBorder.none,
//                         contentPadding: const EdgeInsets.symmetric(
//                           horizontal: 16,
//                           vertical: 12,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 12),
//                 Expanded(
//                   flex: 2,
//                   child: Container(
//                     height: 48,
//                     padding: const EdgeInsets.symmetric(horizontal: 12),
//                     decoration: BoxDecoration(
//                       color: Colors.orange,
//                       borderRadius: BorderRadius.circular(12),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.orange.withOpacity(0.2),
//                           blurRadius: 4,
//                           offset: const Offset(0, 2),
//                         ),
//                       ],
//                     ),
//                     child: DropdownButtonHideUnderline(
//                       child: DropdownButton<String>(
//                         value: selectedFilter,
//                         isExpanded: true,
//                         icon: Container(
//                           padding: const EdgeInsets.all(4),
//                           decoration: BoxDecoration(
//                             color: Colors.orange.shade600,
//                             borderRadius: BorderRadius.circular(6),
//                           ),
//                           child: const Icon(
//                             Icons.keyboard_arrow_down_rounded,
//                             color: Colors.white,
//                             size: 20,
//                           ),
//                         ),
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w600,
//                           fontSize: 14,
//                         ),
//                         dropdownColor: Colors.orange.shade400,
//                         borderRadius: BorderRadius.circular(12),
//                         menuMaxHeight: 300,
//                         items: <String>['Produk', 'Jasa'].map((String value) {
//                           return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(
//                               value,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                           );
//                         }).toList(),
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             selectedFilter = newValue!;
//                             _filterProducts(_searchController.text);
//                           });
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
          
//           // Tambahkan search history section
//           if (searchHistory.isNotEmpty) Container(
//             padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 8),
//                   child: Text(
//                     'Recent Searches',
//                     style: TextStyle(
//                       fontFamily: 'Poppins',
//                       fontSize: 12,
//                       color: Colors.grey,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: searchHistory.map((query) {
//                       return Padding(
//                         padding: const EdgeInsets.only(right: 8),
//                         child: Container(
//                           height: 32,
//                           child: ElevatedButton(
//                             onPressed: () {
//                               _searchController.text = query;
//                               _filterProducts(query);
//                             },
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.white,
//                               elevation: 0,
//                               padding: const EdgeInsets.symmetric(horizontal: 12),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(16),
//                                 side: BorderSide(
//                                   color: Colors.orange.withOpacity(0.3),
//                                   width: 1,
//                                 ),
//                               ),
//                             ),
//                             child: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Icon(
//                                   Icons.history_rounded,
//                                   size: 16,
//                                   color: Colors.orange.shade400,
//                                 ),
//                                 const SizedBox(width: 6),
//                                 Text(
//                                   query,
//                                   style: TextStyle(
//                                     fontFamily: 'Poppins',
//                                     fontSize: 12,
//                                     color: Colors.grey[800],
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 const SizedBox(width: 4),
//                                 GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       searchHistory.remove(query);
//                                     });
//                                   },
//                                   child: Icon(
//                                     Icons.close_rounded,
//                                     size: 14,
//                                     color: Colors.grey[400],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ],
//             ),
//           ),
          
//           Expanded(
//             child: filteredProducts.isEmpty ? 
//               Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.search_off_rounded,
//                       size: 64,
//                       color: Colors.grey[400],
//                     ),
//                     const SizedBox(height: 16),
//                     Text(
//                       'Barang yang lu cari kagak ada brok',
//                       style: TextStyle(
//                         fontFamily: 'Poppins',
//                         fontSize: 16,
//                         color: Colors.grey[600],
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ],
//                 ),
//               ) : 
//               GridView.builder(
//                 padding: const EdgeInsets.all(16),
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 0.75,
//                   crossAxisSpacing: 16,
//                   mainAxisSpacing: 16,
//                 ),
//                 itemCount: filteredProducts.length,
//                 itemBuilder: (context, index) {
//                   final product = filteredProducts[index];
//                   return GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ProductDetailPage(
//                             product: {
//                               'image': product['image'],
//                               'title': product['title'],
//                               'description': product['description'],
//                               'price': product['price'],
//                             },
//                           ),
//                         ),
//                       );
//                     },
//                     child: Card(
//                       elevation: 2,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           ClipRRect(
//                             borderRadius: const BorderRadius.vertical(
//                               top: Radius.circular(12),
//                             ),
//                             child: Image.network(
//                               product['image'],
//                               height: 120,
//                               width: double.infinity,
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(12),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   product['title'],
//                                   style: const TextStyle(
//                                     fontFamily: 'Poppins',
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 14,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 4),
//                                 Text(
//                                   product['price'],
//                                   style: const TextStyle(
//                                     fontFamily: 'Poppins',
//                                     color: Colors.orange,
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: 14,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 4),
//                                 Text(
//                                   product['description'],
//                                   style: const TextStyle(
//                                     fontFamily: 'Poppins',
//                                     color: Colors.grey,
//                                     fontSize: 12,
//                                   ),
//                                   maxLines: 2,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
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
//         currentIndex: 1, 
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
>>>>>>> Stashed changes
