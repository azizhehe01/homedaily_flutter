import '../models/cart_item_model.dart';

class CheckoutController {
  final List<CartItemModel> orderItems = [
    CartItemModel(
      image: 'https://example.com/image1.jpg',
      title: 'Product 1',
      price: 'Rp 100.000',
      quantity: 1,
    ),
    CartItemModel(
      image: 'https://example.com/image2.jpg',
      title: 'Product 2',
      price: 'Rp 200.000',
      quantity: 2,
    ),
  ];

  void processCheckout() {
    // Logic for processing checkout
    print('Checkout processed successfully!');
  }
}
