import '../models/cart_item_model.dart';

class CheckoutController {
  final List<CartItemModel> orderItems = [];

  void addOrderItem(CartItemModel item) {
    orderItems.add(item);
  }

  void processCheckout() {
    // Logic for processing checkout
    print('Checkout processed successfully!');
  }
}
