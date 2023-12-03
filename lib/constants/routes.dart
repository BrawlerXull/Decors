import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:malpani/screen/homepage/view/HomePage.dart';
import 'package:malpani/screen/landingpage/view/LandingPage.dart';
import 'package:malpani/screen/more/view/More.dart';
import 'package:malpani/screen/splashscreen/view/SplashScreen.dart';

String initialPage = "/splash";

List<GetPage> pages = [
  // GetPage(
  //   name: '/home',
  //   page: () => const HomePage(),
  // ),
  // GetPage(
  //   name: '/landing',
  //   page: () => const LandingPage(),
  // ),
  GetPage(
    name: '/splash',
    page: () => const SplashScreen(),
  )
  // GetPage(
  //   name: '/more',
  //   page: () => const More(),
  // ),
];
