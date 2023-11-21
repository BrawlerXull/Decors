import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:malpani/screen/chair/view/ChairPage.dart';
import 'package:malpani/screen/homepage/view/HomePage.dart';
import 'package:malpani/screen/landingpage/view/LandingPage.dart';

import '../screen/flower/view/FlowerPage.dart';

String initialPage = "/landing";

List<GetPage> pages = [
  GetPage(
    name: '/home',
    page: () => const HomePage(),
  ),
  GetPage(
    name: '/flower',
    page: () => const FlowerPage(),
  ),
  GetPage(
    name: '/chair',
    page: () => const ChairPage(),
  ),
  GetPage(
    name: '/landing',
    page: () => const LandingPage(),
  ),
];
