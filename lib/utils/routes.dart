import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:malpani/screen/splashscreen/view/SplashScreen.dart';

abstract final class Routes {
  static String initialPage = "/splash";

  static List<GetPage> pages = [
    GetPage(
      name: '/splash',
      page: () => const SplashScreen(),
    ),
  ];
}
