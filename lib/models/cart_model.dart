import 'package:pet_guardian/models/shop_items.dart';

class CartItem {
  final ShopItem item;
  int quantity;

  CartItem({
    required this.item,
    this.quantity = 1,
  });

  double get total => double.parse(item.price) * quantity;
}
