import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:malpani/constants/constants.dart';
import 'package:malpani/model/ItemModel.dart';

class HomePageController extends GetxController {
  RxList<Item> itemsList = <Item>[].obs;
  RxList<Item> stageAndDecorList = <Item>[
    Item(
      name: "Event Stage",
      price: 500.0,
      isAvailable: true,
      category: "StageAndDecore",
      subCategory: "Event Stage",
      image: "assets/stage.jpg",
    ),
    Item(
      name: "Pandal & Fencing",
      price: 300.0,
      isAvailable: true,
      category: "StageAndDecore",
      subCategory: "Pandal & Fencing",
      image: "assets/pandal.webp",
    ),
    Item(
      name: "Stalls",
      price: 200.0,
      isAvailable: false,
      category: "StageAndDecore",
      subCategory: "Stalls",
      image: "assets/stalls.webp",
    ),
    Item(
      name: "Flower Decore",
      price: 100.0,
      isAvailable: true,
      category: "StageAndDecore",
      subCategory: "Flower Decore",
      image: "assets/flowers.jpeg",
    ),
    Item(
      name: "Podium",
      price: 120.0,
      isAvailable: false,
      category: "StageAndDecore",
      subCategory: "Podium",
      image: "assets/podium.png",
    ),
  ].obs;

  RxList<Item> lightAndSoundList = <Item>[].obs;
  RxList<Item> stationaryAndPrintingList = <Item>[].obs;
  RxList<Item> giftingAndMomentosList = <Item>[].obs;
  RxList<Item> eventGoodiesList = <Item>[].obs;
  RxList<Item> servicesList = <Item>[].obs;
}
