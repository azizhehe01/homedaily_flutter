import 'package:flutter/material.dart';

class DetailProductPage extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productPrice;
  final String productDescription;

  const DetailProductPage({
    required this.productName,
    required this.productImage,
    required this.productPrice,
    required this.productDescription,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(productName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              productImage,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              productName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              productPrice,
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 16),
            Text(
              productDescription,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add to cart logic here
              },
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
