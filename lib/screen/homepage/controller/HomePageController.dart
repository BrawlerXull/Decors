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
  RxList<Item> eventGoodiesList = <Item>[
    Item(
      name: "Hoodies with Print Sample",
      price: 40.0,
      isAvailable: true,
      category: "EventGoodies",
      subCategory: "Hoodies with Print",
      image: "hoodies_with_print_image_url",
    ),
    Item(
      name: "T-shirts with Print Sample",
      price: 20.0,
      isAvailable: false,
      category: "EventGoodies",
      subCategory: "T-shirts with Print",
      image: "tshirts_with_print_image_url",
    ),
    Item(
      name: "Hoodies without Print Sample",
      price: 35.0,
      isAvailable: true,
      category: "EventGoodies",
      subCategory: "Hoodies without Print",
      image: "hoodies_without_print_image_url",
    ),
    Item(
      name: "T-shirts without Print Sample",
      price: 15.0,
      isAvailable: true,
      category: "EventGoodies",
      subCategory: "T-shirts without Print",
      image: "tshirts_without_print_image_url",
    ),
    Item(
      name: "Badges Sample",
      price: 2.0,
      isAvailable: true,
      category: "EventGoodies",
      subCategory: "Badges",
      image: "badges_image_url",
    ),
    Item(
      name: "Jerseys Sample",
      price: 25.0,
      isAvailable: false,
      category: "EventGoodies",
      subCategory: "Jerseys",
      image: "jerseys_image_url",
    ),
    Item(
      name: "Medals Sample",
      price: 8.0,
      isAvailable: true,
      category: "EventGoodies",
      subCategory: "Medals",
      image: "medals_image_url",
    ),
    Item(
      name: "Certificates Sample",
      price: 5.0,
      isAvailable: true,
      category: "EventGoodies",
      subCategory: "Certificates",
      image: "certificates_image_url",
    ),
  ].obs;

  RxList<Item> servicesList = <Item>[
    Item(
      name: "Poster Designing Service",
      price: 100.0,
      isAvailable: true,
      category: "Services",
      subCategory: "Poster Designing",
      image: "poster_designing_service_image_url",
    ),
    Item(
      name: "Photography Service",
      price: 500.0,
      isAvailable: false,
      category: "Services",
      subCategory: "Photography",
      image: "photography_service_image_url",
    ),
    Item(
      name: "Videography Service",
      price: 800.0,
      isAvailable: true,
      category: "Services",
      subCategory: "Videography",
      image: "videography_service_image_url",
    ),
    Item(
      name: "Judges Service",
      price: 1000.0,
      isAvailable: true,
      category: "Services",
      subCategory: "Judges",
      image: "judges_service_image_url",
    ),
    Item(
      name: "Artists Service",
      price: 1200.0,
      isAvailable: false,
      category: "Services",
      subCategory: "Artists",
      image: "artists_service_image_url",
    ),
  ].obs;
}
