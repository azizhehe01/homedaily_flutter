import '../models/product_model.dart';

class WishlistController {
  final List<ProductModel> wishlistItems = [];

  void addToWishlist(ProductModel product) {
    wishlistItems.add(product);
  }

  void removeFromWishlist(ProductModel product) {
    wishlistItems.remove(product);
  }
}
