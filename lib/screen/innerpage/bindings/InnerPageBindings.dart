import 'package:get/get.dart';
import 'package:malpani/screen/innerpage/controller/InnerPageController.dart';

class InnerPageBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(InnerPageController(), permanent: true);
  }
}
