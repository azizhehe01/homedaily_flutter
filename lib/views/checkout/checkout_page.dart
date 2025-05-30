import 'package:flutter/material.dart';
import '../../controllers/checkout_controller.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CheckoutController _checkoutController = CheckoutController();

    return Scaffold(
      appBar: AppBar(title: const Text('Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Order Summary',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: _checkoutController.orderItems.length,
                itemBuilder: (context, index) {
                  final item = _checkoutController.orderItems[index];
                  return Card(
                    child: ListTile(
                      title: Text(item.title),
                      subtitle: Text('Quantity: ${item.quantity}'),
                      trailing: Text(item.price),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _checkoutController.processCheckout();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Checkout successful!')),
                );
              },
              child: const Text('Confirm Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
