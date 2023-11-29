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
  RxList<Item> stationaryAndPrintingList = <Item>[
    Item(
      name: "Event Backdrops & Flexes",
      price: 300.0,
      isAvailable: true,
      category: "StationaryAndPrinting",
      subCategory: "Event Backdrops & Flexes",
      image: "event_backdrops_flexes_image_url",
    ),
    Item(
      name: "Posters",
      price: 50.0,
      isAvailable: false,
      category: "StationaryAndPrinting",
      subCategory: "Posters",
      image: "posters_image_url",
    ),
    Item(
      name: "Craft Sheets",
      price: 20.0,
      isAvailable: true,
      category: "StationaryAndPrinting",
      subCategory: "Craft Sheets",
      image: "craft_sheets_image_url",
    ),
    Item(
      name: "Pens with print",
      price: 5.0,
      isAvailable: true,
      category: "StationaryAndPrinting",
      subCategory: "Pens with print",
      image: "pens_with_print_image_url",
    ),
    Item(
      name: "Folders with print",
      price: 8.0,
      isAvailable: true,
      category: "StationaryAndPrinting",
      subCategory: "Folders with print",
      image: "folders_with_print_image_url",
    ),
    Item(
      name: "Notepads with print",
      price: 6.0,
      isAvailable: false,
      category: "StationaryAndPrinting",
      subCategory: "Notepads with print",
      image: "notepads_with_print_image_url",
    ),
    Item(
      name: "Pens without print",
      price: 3.0,
      isAvailable: true,
      category: "StationaryAndPrinting",
      subCategory: "Pens without print",
      image: "pens_without_print_image_url",
    ),
    Item(
      name: "Folders without print",
      price: 5.0,
      isAvailable: true,
      category: "StationaryAndPrinting",
      subCategory: "Folders without print",
      image: "folders_without_print_image_url",
    ),
    Item(
      name: "Notepads without print",
      price: 4.0,
      isAvailable: false,
      category: "StationaryAndPrinting",
      subCategory: "Notepads without print",
      image: "notepads_without_print_image_url",
    ),
    Item(
      name: "ID cards & holders",
      price: 2.0,
      isAvailable: true,
      category: "StationaryAndPrinting",
      subCategory: "ID cards & holders",
      image: "id_cards_holders_image_url",
    ),
    Item(
      name: "Miscellaneous",
      price: 10.0,
      isAvailable: true,
      category: "StationaryAndPrinting",
      subCategory: "Miscellaneous",
      image: "miscellaneous_image_url",
    ),
  ].obs;
  RxList<Item> giftingAndMomentosList = <Item>[].obs;
  RxList<Item> eventGoodiesList = <Item>[].obs;
  RxList<Item> servicesList = <Item>[].obs;
}
