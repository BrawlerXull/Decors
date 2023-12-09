import 'package:get/get.dart';
import 'package:malpani/model/ItemModel.dart';
import 'package:malpani/utils/titleEnum.dart';

class InnerPageController extends GetxController {
  RxList<Map<String, dynamic>> stageAndDecors = [
    {
      "name": "Event Stage Sample",
      "price": 500.0,
      "isAvailable": true,
      "category": "StageAndDecore",
      "subCategory": "Event Stage",
      "image": "event_stage_image_url"
    },
    {
      "name": "Pandal & Fencing Sample",
      "price": 300.0,
      "isAvailable": true,
      "category": "StageAndDecore",
      "subCategory": "Pandal & Fencing",
      "image": "pandal_fencing_image_url"
    },
    {
      "name": "Stalls Sample",
      "price": 200.0,
      "isAvailable": false,
      "category": "StageAndDecore",
      "subCategory": "Stalls",
      "image": "stalls_image_url"
    },
    {
      "name": "Flower Decore Sample",
      "price": 100.0,
      "isAvailable": true,
      "category": "StageAndDecore",
      "subCategory": "Flower Decore",
      "image": "flower_decore_image_url"
    },
    {
      "name": "Podium Sample",
      "price": 120.0,
      "isAvailable": false,
      "category": "StageAndDecore",
      "subCategory": "Podium",
      "image": "podium_image_url"
    }
  ].obs;

  final RxInt stageAndDecorTotalCost = 0.obs;
  final RxList<Item> stageAndDecorSelectedItems = <Item>[].obs;

  List<Item> stageAndDecorsList = <Item>[].obs;

  int getTotalCost() {
    return stageAndDecorTotalCost.value;
  }

  @override
  void onInit() {
    stageAndDecorsList = stageAndDecors.map((data) {
      return Item(
        name: data["name"] ?? "",
        price: data["price"] ?? 0.0,
        isAvailable: data["isAvailable"] ?? false,
        category: data["category"] ?? "",
        subCategory: data["subCategory"] ?? "",
        image: data["image"] ?? "",
      );
    }).toList();
    super.onInit();
  }

  List<Item> getList(TitleType titleType) {
    switch (titleType) {
      case TitleType.stageAndDecors:
        return stageAndDecorsList;

      default:
        return [];
    }
  }
}
