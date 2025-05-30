import 'package:flutter/material.dart';
import 'views/cart/cart_page.dart';
import 'views/address/address_page.dart';
import 'views/checkout/checkout_page.dart';
import 'views/home/home_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const HomePage(),
    '/cart': (context) => const CartPage(),
    '/address': (context) => const AddressPage(),
    '/checkout': (context) => const CheckoutPage(),
  };
}
