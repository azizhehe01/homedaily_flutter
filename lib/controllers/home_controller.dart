import 'package:flutter/material.dart';

class Feature {
  final String title;
  final IconData icon;
  final String route;

  Feature({required this.title, required this.icon, required this.route});
}

class HomeController {
  final List<Feature> featureList = [
    Feature(title: 'Cart', icon: Icons.shopping_cart, route: '/cart'),
    Feature(title: 'Address', icon: Icons.location_on, route: '/address'),
    Feature(title: 'Checkout', icon: Icons.payment, route: '/checkout'),
  ];
}
