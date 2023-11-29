import 'package:get/get.dart';

class MorePageController extends GetxController {
  RxInt quantity = 0.obs;

  void increaseQuantity() {
    quantity++;
  }

  void decreaseQuantity() {
    quantity--;
  }
}
