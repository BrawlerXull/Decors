import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:malpani/constants/constants.dart';
import 'package:malpani/model/ItemModel.dart';

class HomePageController extends GetxController {
  RxList<Item> itemsList = <Item>[].obs;
  RxList<Item> stageAndDecorList = <Item>[
    Item(
      name: "Event Stage Sample",
      price: 500.0,
      isAvailable: true,
      category: "StageAndDecore",
      subCategory: "Event Stage",
      image: "assets/stage.jpg",
    ),
    Item(
      name: "Pandal & Fencing Sample",
      price: 300.0,
      isAvailable: true,
      category: "StageAndDecore",
      subCategory: "Pandal & Fencing",
      image: "assets/pandal.webp",
    ),
    Item(
      name: "Stalls Sample",
      price: 200.0,
      isAvailable: false,
      category: "StageAndDecore",
      subCategory: "Stalls",
      image: "assets/stalls.webp",
    ),
    Item(
      name: "Flower Decore Sample",
      price: 100.0,
      isAvailable: true,
      category: "StageAndDecore",
      subCategory: "Flower Decore",
      image: "assets/flowers.jpeg",
    ),
    Item(
      name: "Podium Sample",
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

  Future<void> fetchAllTasks() async {
    try {
      String url = kApiUrl;
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        final List<dynamic> items = responseData['items'];
        updateItemList(items);

        print('GET request successful!');
      } else {
        Get.snackbar("error", response.body);
      }
    } catch (error) {
      print('Error sending GET request: $error');
    }
  }

  void updateItemList(List<dynamic> items) {
    items.forEach((item) {
      if (item != null) {
        Item newItem = Item(
          name: item['name'] ?? '',
          price: item['price'] ?? 0,
          isAvailable: item['isAvailable'] ?? false,
          category: item['category'] ?? '',
          subCategory: item['subCategory'] ?? '',
          image: item['image'] ?? '',
        );

        if (item['category'] == 'StageAndDecore') {
          stageAndDecorList.add(newItem);
        } else if (item['category'] == 'LightsAndSound') {
          lightAndSoundList.add(newItem);
        } else if (item['category'] == 'StationaryAndPrinting') {
          stationaryAndPrintingList.add(newItem);
        } else if (item['category'] == 'GiftingAndMomentos') {
          giftingAndMomentosList.add(newItem);
        } else if (item['category'] == 'EventGoodies') {
          eventGoodiesList.add(newItem);
        } else if (item['category'] == 'Services') {
          servicesList.add(newItem);
        }
      }
    });
  }
}
