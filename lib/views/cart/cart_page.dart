import 'package:flutter/material.dart';
import '../../controllers/cart_controller.dart';
import '../cart/cart_item_card.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final CartController _cartController = CartController();
  String selectedFilter = 'Produk';

  @override
  Widget build(BuildContext context) {
    final currentItems =
        selectedFilter == 'Produk'
            ? _cartController.productCartItems
            : _cartController.serviceCartItems;

    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: Column(
        children: [
          DropdownButton<String>(
            value: selectedFilter,
            items:
                ['Produk', 'Jasa'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedFilter = newValue!;
              });
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: currentItems.length,
              itemBuilder: (context, index) {
                final item = currentItems[index];
                return CartItemCard(
                  image: item.image,
                  title: item.title,
                  price: item.price,
                  quantity: item.quantity,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
