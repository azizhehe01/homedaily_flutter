import '../models/cart_item_model.dart';

class CartController {
  final List<CartItemModel> productCartItems = [];
  final List<CartItemModel> serviceCartItems = [];

  void addProductItem(CartItemModel item) {
    productCartItems.add(item);
  }

  void addServiceItem(CartItemModel item) {
    serviceCartItems.add(item);
  }

  void removeProductItem(CartItemModel item) {
    productCartItems.remove(item);
  }

  void removeServiceItem(CartItemModel item) {
    serviceCartItems.remove(item);
  }
}
