import 'package:get/get.dart';

import 'package:malpani/model/ItemModel.dart';

class ShoppingCartController extends GetxController {
  final RxList<Item> cartItems = <Item>[].obs;

  double get totalPrice =>
      cartItems.fold(0, (total, item) => total + item.price);
}
