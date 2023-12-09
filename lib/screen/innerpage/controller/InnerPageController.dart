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

  RxList<Map<String, dynamic>> giftingAndMomentos = [
    {
      "name": "Wooden Momentos Sample",
      "price": 150.0,
      "isAvailable": true,
      "category": "GiftingAndMomentos",
      "subCategory": "Wooden Momentos",
      "image": "wooden_momentos_image_url"
    },
    {
      "name": "Glass Momentos Sample",
      "price": 200.0,
      "isAvailable": false,
      "category": "GiftingAndMomentos",
      "subCategory": "Glass Momentos",
      "image": "glass_momentos_image_url"
    },
    {
      "name": "Frames Sample",
      "price": 80.0,
      "isAvailable": true,
      "category": "GiftingAndMomentos",
      "subCategory": "Frames",
      "image": "frames_image_url"
    }
  ].obs;

  RxList<Map<String, dynamic>> services = [
    {
      "name": "Poster Designing Service",
      "price": 100.0,
      "isAvailable": true,
      "category": "Services",
      "subCategory": "Poster Designing",
      "image": "poster_designing_service_image_url"
    },
    {
      "name": "Photography Service",
      "price": 500.0,
      "isAvailable": false,
      "category": "Services",
      "subCategory": "Photography",
      "image": "photography_service_image_url"
    },
    {
      "name": "Videography Service",
      "price": 800.0,
      "isAvailable": true,
      "category": "Services",
      "subCategory": "Videography",
      "image": "videography_service_image_url"
    },
    {
      "name": "Judges Service",
      "price": 1000.0,
      "isAvailable": true,
      "category": "Services",
      "subCategory": "Judges",
      "image": "judges_service_image_url"
    },
    {
      "name": "Artists Service",
      "price": 1200.0,
      "isAvailable": false,
      "category": "Services",
      "subCategory": "Artists",
      "image": "artists_service_image_url"
    }
  ].obs;

  RxInt stageAndDecorTotalCost = 0.obs;
  RxInt giftingAndMomentosTotalCost = 0.obs;
  RxInt lightsAndSoundTotalCost = 0.obs;
  RxInt servicesTotalCost = 0.obs;

  RxList<Item> stageAndDecorSelectedItems = <Item>[].obs;
  RxList<Item> giftingAndMomentosSelectedItems = <Item>[].obs;
  RxList<Item> lightsAndSoundSelectedItems = <Item>[].obs;
  RxList<Item> servicesSelectedItems = <Item>[].obs;

  List<Item> stageAndDecorsList = <Item>[].obs;
  List<Item> giftingAndMomentosList = <Item>[].obs;
  List<Item> lightsAndSoundList = <Item>[].obs;
  List<Item> servicesList = <Item>[].obs;

  RxList<Item> totalItemsInTheCart = <Item>[].obs;
  @override
  void onInit() {
    print('Inner page controller initialised');
    stageAndDecorsList = stageAndDecors.map((data) {
      return Item(
          name: data["name"] ?? "",
          price: data["price"] ?? 0.0,
          isAvailable: data["isAvailable"] ?? false,
          category: data["category"] ?? "",
          subCategory: data["subCategory"] ?? "",
          image: data["image"] ?? "",
          titleType: TitleType.stageAndDecors);
    }).toList();

    lightsAndSoundList = lightsAndSound.map((data) {
      return Item(
          name: data["name"] ?? "",
          price: data["price"] ?? 0.0,
          isAvailable: data["isAvailable"] ?? false,
          category: data["category"] ?? "",
          subCategory: data["subCategory"] ?? "",
          image: data["image"] ?? "",
          titleType: TitleType.lightsAndSound);
    }).toList();

    giftingAndMomentosList = giftingAndMomentos.map((data) {
      return Item(
          name: data["name"] ?? "",
          price: data["price"] ?? 0.0,
          isAvailable: data["isAvailable"] ?? false,
          category: data["category"] ?? "",
          subCategory: data["subCategory"] ?? "",
          image: data["image"] ?? "",
          titleType: TitleType.giftingAndMomentos);
    }).toList();

    servicesList = services.map((data) {
      return Item(
          name: data["name"] ?? "",
          price: data["price"] ?? 0.0,
          isAvailable: data["isAvailable"] ?? false,
          category: data["category"] ?? "",
          subCategory: data["subCategory"] ?? "",
          image: data["image"] ?? "",
          titleType: TitleType.services);
    }).toList();

    super.onInit();
  }

  List<Item> getList(TitleType titleType) {
    switch (titleType) {
      case TitleType.stageAndDecors:
        return stageAndDecorsList;
      case TitleType.lightsAndSound:
        return lightsAndSoundList;
      case TitleType.giftingAndMomentos:
        return giftingAndMomentosList;
      case TitleType.services:
        return servicesList;
      default:
        return [];
    }
  }

  int getTotalCost() {
    return stageAndDecorTotalCost.value +
        lightsAndSoundTotalCost.value +
        giftingAndMomentosTotalCost.value +
        servicesTotalCost.value;
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
      case TitleType.giftingAndMomentos:
        giftingAndMomentosTotalCost += item.price.toInt();
        giftingAndMomentosSelectedItems.add(item);
        break;
      case TitleType.services:
        servicesTotalCost += item.price.toInt();
        servicesSelectedItems.add(item);
        break;
      default:
        break;
    }
    updateTotalItemsInTheCart();
  }

  void removeItem(Item item, TitleType titleType) {
    int itemPrice = item.price.toInt();

    switch (titleType) {
      case TitleType.stageAndDecors:
        stageAndDecorTotalCost -= itemPrice;
        stageAndDecorSelectedItems.remove(item);
        break;
      case TitleType.lightsAndSound:
        lightsAndSoundTotalCost -= itemPrice;
        lightsAndSoundSelectedItems.remove(item);
        break;
      case TitleType.giftingAndMomentos:
        giftingAndMomentosTotalCost -= itemPrice;
        giftingAndMomentosSelectedItems.remove(item);
        break;
      case TitleType.services:
        servicesTotalCost -= itemPrice;
        servicesSelectedItems.remove(item);
        break;
      default:
        break;
    }

    if (stageAndDecorTotalCost < 0) {
      stageAndDecorTotalCost = 0.obs;
    }

    if (lightsAndSoundTotalCost < 0) {
      lightsAndSoundTotalCost = 0.obs;
    }

    if (giftingAndMomentosTotalCost < 0) {
      giftingAndMomentosTotalCost = 0.obs;
    }
    if (servicesTotalCost < 0) {
      servicesTotalCost = 0.obs;
    }
    updateTotalItemsInTheCart();
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
      case TitleType.giftingAndMomentos:
        return giftingAndMomentosSelectedItems
            .where((selectedItem) => selectedItem == item)
            .length;
      case TitleType.services:
        return servicesSelectedItems
            .where((selectedItem) => selectedItem == item)
            .length;
      default:
        return 0;
    }
  }

  void updateTotalItemsInTheCart() {
    totalItemsInTheCart = lightsAndSoundSelectedItems +
        servicesSelectedItems +
        stageAndDecorSelectedItems +
        giftingAndMomentosSelectedItems;
  }
}
