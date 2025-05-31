import '../models/product_model.dart';

class ViewAllProductController {
  final List<ProductModel> allProducts = [];

  void fetchAllProducts() {
    // Logic for fetching all products
    print('Fetched all products');
  }

  void filterProducts(String category) {
    // Logic for filtering products
    print('Filtered products by category: $category');
  }
}
