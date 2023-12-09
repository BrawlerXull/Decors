import 'package:get/get.dart';
import 'package:malpani/screen/cart/binding/CartPageBindings.dart';
import 'package:malpani/screen/cart/view/CartPage.dart';
import 'package:malpani/screen/innerpage/bindings/InnerPageBindings.dart';
import 'package:malpani/screen/innerpage/view/InnerPage.dart';
import 'package:malpani/screen/splashscreen/view/SplashScreen.dart';

abstract class Routes {
  static const SplashScreen initialPage = SplashScreen();

  static const INNER = '/inner';
  static const SPLASH = '/splash';
  static const CART = '/cart';

  static List<GetPage> pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.INNER,
      page: () => InnerPage(),
      binding: InnerPageBindings(),
    ),
    GetPage(
      name: Routes.CART,
      page: () => CartPage(),
      binding: CartPageBindings(),
    ),
  ];
}
