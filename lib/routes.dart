import 'package:flutter/material.dart';
import 'views/cart/cart_page.dart';
import 'views/address/address_page.dart';
import 'views/checkout/checkout_page.dart';
import 'views/detail_product/detail_product_page.dart';
import 'views/home/home_page.dart';
import 'views/profile/profile_page.dart';
import 'views/transaction/transaction_page.dart';
import 'views/wishlist/wishlist_page.dart';
import 'views/view_all/view_all_product.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const HomePage(),
    '/cart': (context) => const CartPage(),
    '/address': (context) => const AddressPage(),
    '/checkout': (context) => const CheckoutPage(),
    '/detail_product':
        (context) => DetailProductPage(
          productName: 'Sample Product',
          productImage: 'https://example.com/sample.jpg',
          productPrice: 'Rp 100.000',
          productDescription: 'This is a sample product description.',
        ),
    '/profile': (context) => const ProfilePage(),
    '/transaction': (context) => const TransactionPage(),
    '/wishlist': (context) => const WishlistPage(),
    '/view_all_produk': (context) => const ViewAllProdukPage(),
  };
}
