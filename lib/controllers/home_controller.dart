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
    Feature(title: 'Profile', icon: Icons.person, route: '/profile'),
    Feature(title: 'Transactions', icon: Icons.receipt, route: '/transaction'),
    Feature(title: 'Wishlist', icon: Icons.favorite, route: '/wishlist'),
    Feature(
      title: 'View All Products',
      icon: Icons.grid_view,
      route: '/view_all_produk',
    ),
  ];
}
