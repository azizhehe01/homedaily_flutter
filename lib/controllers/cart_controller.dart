import '../models/cart_item_model.dart';

class CartController {
  final List<CartItemModel> productCartItems = [
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

  final List<CartItemModel> serviceCartItems = [
    CartItemModel(
      image: 'https://example.com/image3.jpg',
      title: 'Service 1',
      price: 'Rp 300.000',
      quantity: 1,
    ),
    CartItemModel(
      image: 'https://example.com/image4.jpg',
      title: 'Service 2',
      price: 'Rp 400.000',
      quantity: 1,
    ),
  ];
}
