import '../models/product_model.dart';

class ProductController {
  final List<ProductModel> products = [
    ProductModel(
      id: 'P001',
      name: 'Product 1',
      price: 'Rp 100.000',
      image: 'https://example.com/image1.jpg',
    ),
    ProductModel(
      id: 'P002',
      name: 'Product 2',
      price: 'Rp 200.000',
      image: 'https://example.com/image2.jpg',
    ),
  ];

  List<ProductModel> getProducts() {
    return products;
  }

  void filterProducts(String category) {
    // Logic for filtering products
    print('Filtered products by category: $category');
  }
}
