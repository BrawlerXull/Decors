import 'package:get/get.dart';
import 'package:malpani/screen/cart/controller/CartPageController.dart';
import 'package:malpani/screen/innerpage/controller/InnerPageController.dart';

class CartPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(
      InnerPageController(),
    );
  }
}
