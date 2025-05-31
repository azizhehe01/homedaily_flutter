import '../models/product_model.dart';

class DetailProductController {
  ProductModel? selectedProduct;

  void selectProduct(ProductModel product) {
    selectedProduct = product;
  }

  void addToCart(ProductModel product) {
    // Logic for adding product to cart
    print('${product.name} added to cart!');
  }
}
