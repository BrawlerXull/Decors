import 'package:get/get.dart';
import 'package:malpani/model/ItemModel.dart';
import 'package:malpani/utils/titleEnum.dart';

class InnerPageController extends GetxController {
  //stage and decor data
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

  RxInt stageAndDecorTotalCost = 0.obs;
  RxList<Item> stageAndDecorSelectedItems = <Item>[].obs;

  List<Item> stageAndDecorsList = <Item>[].obs;

  // stage and decor data

  // light and sound data

  RxList<Map<String, dynamic>> lightsAndSound = [
    {
      "name": "Speakers & Base Sample",
      "price": 700.0,
      "isAvailable": true,
      "category": "LightsAndSound",
      "subCategory": "Speakers & Base",
      "image": "speakers_base_image_url"
    },
    {
      "name": "Mics Sample",
      "price": 150.0,
      "isAvailable": false,
      "category": "LightsAndSound",
      "subCategory": "Mics",
      "image": "mics_image_url"
    },
    {
      "name": "LED Screen Sample",
      "price": 1200.0,
      "isAvailable": true,
      "category": "LightsAndSound",
      "subCategory": "LED Screen",
      "image": "led_screen_image_url"
    },
    {
      "name": "Spot Lights Sample",
      "price": 250.0,
      "isAvailable": true,
      "category": "LightsAndSound",
      "subCategory": "Spot Lights",
      "image": "spot_lights_image_url"
    },
    {
      "name": "Lasers Lights Sample",
      "price": 400.0,
      "isAvailable": true,
      "category": "LightsAndSound",
      "subCategory": "Lasers Lights",
      "image": "lasers_lights_image_url"
    },
    {
      "name": "Kinetic Lights Sample",
      "price": 800.0,
      "isAvailable": false,
      "category": "LightsAndSound",
      "subCategory": "Kinetic Lights",
      "image": "kinetic_lights_image_url"
    },
    {
      "name": "Halogens Sample",
      "price": 90.0,
      "isAvailable": true,
      "category": "LightsAndSound",
      "subCategory": "Halogens",
      "image": "halogens_image_url"
    }
  ].obs;

  RxInt lightsAndSoundTotalCost = 0.obs;
  RxList<Item> lightsAndSoundSelectedItems = <Item>[].obs;
  List<Item> lightsAndSoundList = <Item>[].obs;
  // light and sound data

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

    lightsAndSoundList = lightsAndSound.map((data) {
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
      case TitleType.lightsAndSound:
        return lightsAndSoundList;
      default:
        return [];
    }
  }

  int getTotalCost() {
    return stageAndDecorTotalCost.value + lightsAndSoundTotalCost.value;
  }

  void addItem(Item item, TitleType titleType) {
    switch (titleType) {
      case TitleType.stageAndDecors:
        stageAndDecorTotalCost += item.price.toInt();
        stageAndDecorSelectedItems.add(item);
        break;
      case TitleType.lightsAndSound:
        lightsAndSoundTotalCost += item.price.toInt();
        lightsAndSoundSelectedItems.add(item);
        break;
      default:
        break;
    }
  }

  void removeItem(Item item, TitleType titleType) {
    switch (titleType) {
      case TitleType.stageAndDecors:
        stageAndDecorTotalCost -= item.price.toInt();
        stageAndDecorSelectedItems.remove(item);
        break;
      case TitleType.lightsAndSound:
        lightsAndSoundTotalCost -= item.price.toInt();
        lightsAndSoundSelectedItems.remove(item);
        break;
      default:
        break;
    }
  }

  int getSelectedItemCount(Item item, TitleType titleType) {
    switch (titleType) {
      case TitleType.stageAndDecors:
        return stageAndDecorSelectedItems
            .where((selectedItem) => selectedItem == item)
            .length;
      case TitleType.lightsAndSound:
        return lightsAndSoundSelectedItems
            .where((selectedItem) => selectedItem == item)
            .length;
      default:
        return 0;
    }
  }
}
