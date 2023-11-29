import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:malpani/screen/homepage/view/HomePage.dart';
import 'package:malpani/screen/landingpage/view/LandingPage.dart';

String initialPage = "/landing";

List<GetPage> pages = [
  GetPage(
    name: '/home',
    page: () => const HomePage(),
  ),
  GetPage(
    name: '/landing',
    page: () => const LandingPage(),
  ),
];
