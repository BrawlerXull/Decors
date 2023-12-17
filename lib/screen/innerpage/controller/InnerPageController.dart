import 'package:get/get.dart';
import 'package:malpani/model/ItemModel.dart';
import 'package:malpani/utils/titleEnum.dart';

class InnerPageController extends GetxController {
  RxList<Map<String, dynamic>> stageAndDecors = [
    {
      "name": "Event Stage ",
      "price": 500.0,
      "isAvailable": true,
      "category": "StageAndDecore",
      "subCategory": "Event Stage",
      "image": "event_stage_image_url"
    },
    {
      "name": "Pandal & Fencing ",
      "price": 300.0,
      "isAvailable": true,
      "category": "StageAndDecore",
      "subCategory": "Pandal & Fencing",
      "image": "pandal_fencing_image_url"
    },
    {
      "name": "Stalls ",
      "price": 200.0,
      "isAvailable": false,
      "category": "StageAndDecore",
      "subCategory": "Stalls",
      "image": "stalls_image_url"
    },
    {
      "name": "Flower Decore ",
      "price": 100.0,
      "isAvailable": true,
      "category": "StageAndDecore",
      "subCategory": "Flower Decore",
      "image": "flower_decore_image_url"
    },
    {
      "name": "Podium ",
      "price": 120.0,
      "isAvailable": false,
      "category": "StageAndDecore",
      "subCategory": "Podium",
      "image": "podium_image_url"
    }
  ].obs;

  RxList<Map<String, dynamic>> lightsAndSound = [
    {
      "name": "Speakers & Base",
      "price": 700.0,
      "isAvailable": true,
      "category": "LightsAndSound",
      "subCategory": "Speakers & Base",
      "image": "speakers_base_image_url"
    },
    {
      "name": "Mics",
      "price": 150.0,
      "isAvailable": false,
      "category": "LightsAndSound",
      "subCategory": "Mics",
      "image": "mics_image_url"
    },
    {
      "name": "LED Screen",
      "price": 1200.0,
      "isAvailable": true,
      "category": "LightsAndSound",
      "subCategory": "LED Screen",
      "image": "led_screen_image_url"
    },
    {
      "name": "Spot Lights",
      "price": 250.0,
      "isAvailable": true,
      "category": "LightsAndSound",
      "subCategory": "Spot Lights",
      "image": "spot_lights_image_url"
    },
    {
      "name": "Lasers Lights",
      "price": 400.0,
      "isAvailable": true,
      "category": "LightsAndSound",
      "subCategory": "Lasers Lights",
      "image": "lasers_lights_image_url"
    },
    {
      "name": "Kinetic Lights",
      "price": 800.0,
      "isAvailable": false,
      "category": "LightsAndSound",
      "subCategory": "Kinetic Lights",
      "image": "kinetic_lights_image_url"
    },
    {
      "name": "Halogens",
      "price": 90.0,
      "isAvailable": true,
      "category": "LightsAndSound",
      "subCategory": "Halogens",
      "image": "halogens_image_url"
    }
  ].obs;

  RxList<Map<String, dynamic>> giftingAndMomentos = [
    {
      "name": "Wooden Momentos",
      "price": 150.0,
      "isAvailable": true,
      "category": "GiftingAndMomentos",
      "subCategory": "Wooden Momentos",
      "image": "wooden_momentos_image_url"
    },
    {
      "name": "Glass Momentos",
      "price": 200.0,
      "isAvailable": false,
      "category": "GiftingAndMomentos",
      "subCategory": "Glass Momentos",
      "image": "glass_momentos_image_url"
    },
    {
      "name": "Frames",
      "price": 80.0,
      "isAvailable": true,
      "category": "GiftingAndMomentos",
      "subCategory": "Frames",
      "image": "frames_image_url"
    }
  ].obs;

  RxList<Map<String, dynamic>> services = [
    {
      "name": "Poster Designing",
      "price": 100.0,
      "isAvailable": true,
      "category": "Services",
      "subCategory": "Poster Designing",
      "image": "poster_designing_service_image_url"
    },
    {
      "name": "Photography",
      "price": 500.0,
      "isAvailable": false,
      "category": "Services",
      "subCategory": "Photography",
      "image": "photography_service_image_url"
    },
    {
      "name": "Videography",
      "price": 800.0,
      "isAvailable": true,
      "category": "Services",
      "subCategory": "Videography",
      "image": "videography_service_image_url"
    },
    {
      "name": "Judges",
      "price": 1000.0,
      "isAvailable": true,
      "category": "Services",
      "subCategory": "Judges",
      "image": "judges_service_image_url"
    },
    {
      "name": "Artists",
      "price": 1200.0,
      "isAvailable": false,
      "category": "Services",
      "subCategory": "Artists",
      "image": "artists_service_image_url"
    }
  ].obs;

  RxList<Map<String, dynamic>> eventGoodies = [
    {
      "name": "Hoodies with Print",
      "price": 40.0,
      "isAvailable": true,
      "category": "EventGoodies",
      "subCategory": "Hoodies with Print",
      "image": "hoodies_with_print_image_url"
    },
    {
      "name": "T-shirts with Print",
      "price": 20.0,
      "isAvailable": false,
      "category": "EventGoodies",
      "subCategory": "T-shirts with Print",
      "image": "tshirts_with_print_image_url"
    },
    {
      "name": "Hoodies without Print",
      "price": 35.0,
      "isAvailable": true,
      "category": "EventGoodies",
      "subCategory": "Hoodies without Print",
      "image": "hoodies_without_print_image_url"
    },
    {
      "name": "T-shirts without Print",
      "price": 15.0,
      "isAvailable": true,
      "category": "EventGoodies",
      "subCategory": "T-shirts without Print",
      "image": "tshirts_without_print_image_url"
    },
    {
      "name": "Badges",
      "price": 2.0,
      "isAvailable": true,
      "category": "EventGoodies",
      "subCategory": "Badges",
      "image": "badges_image_url"
    },
    {
      "name": "Jerseys",
      "price": 25.0,
      "isAvailable": false,
      "category": "EventGoodies",
      "subCategory": "Jerseys",
      "image": "jerseys_image_url"
    },
    {
      "name": "Medals",
      "price": 8.0,
      "isAvailable": true,
      "category": "EventGoodies",
      "subCategory": "Medals",
      "image": "medals_image_url"
    },
    {
      "name": "Certificates",
      "price": 5.0,
      "isAvailable": true,
      "category": "EventGoodies",
      "subCategory": "Certificates",
      "image": "certificates_image_url"
    }
  ].obs;

  RxList<Map<String, dynamic>> stationaryAndPrintingItems = [
    {
      "name": "Event Backdrops & Flexes",
      "price": 300.0,
      "isAvailable": true,
      "category": "StationaryAndPrinting",
      "subCategory": "Event Backdrops & Flexes",
      "image": "event_backdrops_flexes_image_url"
    },
    {
      "name": "Posters",
      "price": 50.0,
      "isAvailable": false,
      "category": "StationaryAndPrinting",
      "subCategory": "Posters",
      "image": "posters_image_url"
    },
    {
      "name": "Craft Sheets",
      "price": 20.0,
      "isAvailable": true,
      "category": "StationaryAndPrinting",
      "subCategory": "Craft Sheets",
      "image": "craft_sheets_image_url"
    },
    {
      "name": "Pens with print",
      "price": 5.0,
      "isAvailable": true,
      "category": "StationaryAndPrinting",
      "subCategory": "Pens with print",
      "image": "pens_with_print_image_url"
    },
    {
      "name": "Folders with print",
      "price": 8.0,
      "isAvailable": true,
      "category": "StationaryAndPrinting",
      "subCategory": "Folders with print",
      "image": "folders_with_print_image_url"
    },
    {
      "name": "Notepads with print",
      "price": 6.0,
      "isAvailable": false,
      "category": "StationaryAndPrinting",
      "subCategory": "Notepads with print",
      "image": "notepads_with_print_image_url"
    },
    {
      "name": "Pens without print",
      "price": 3.0,
      "isAvailable": true,
      "category": "StationaryAndPrinting",
      "subCategory": "Pens without print",
      "image": "pens_without_print_image_url"
    },
    {
      "name": "Folders without print",
      "price": 5.0,
      "isAvailable": true,
      "category": "StationaryAndPrinting",
      "subCategory": "Folders without print",
      "image": "folders_without_print_image_url"
    },
    {
      "name": "Notepads without print",
      "price": 4.0,
      "isAvailable": false,
      "category": "StationaryAndPrinting",
      "subCategory": "Notepads without print",
      "image": "notepads_without_print_image_url"
    },
    {
      "name": "ID cards & holders",
      "price": 2.0,
      "isAvailable": true,
      "category": "StationaryAndPrinting",
      "subCategory": "ID cards & holders",
      "image": "id_cards_holders_image_url"
    },
    {
      "name": "Miscellaneous",
      "price": 10.0,
      "isAvailable": true,
      "category": "StationaryAndPrinting",
      "subCategory": "Miscellaneous",
      "image": "miscellaneous_image_url"
    }
  ].obs;

  RxInt stationaryAndPrintingTotalCost = 0.obs;
  RxList<Item> stationaryAndPrintingSelectedItems = <Item>[].obs;
  List<Item> stationaryAndPrintingList = <Item>[].obs;

  RxInt eventGoodiesTotalCost = 0.obs;
  RxList<Item> eventGoodiesSelectedItems = <Item>[].obs;
  List<Item> eventGoodiesList = <Item>[].obs;

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

    eventGoodiesList = eventGoodies.map((data) {
      return Item(
        name: data["name"] ?? "",
        price: data["price"] ?? 0.0,
        isAvailable: data["isAvailable"] ?? false,
        category: data["category"] ?? "",
        subCategory: data["subCategory"] ?? "",
        image: data["image"] ?? "",
        titleType: TitleType.eventGoodies,
      );
    }).toList();

    stationaryAndPrintingList = stationaryAndPrintingItems.map((data) {
      return Item(
        name: data["name"] ?? "",
        price: data["price"] ?? 0.0,
        isAvailable: data["isAvailable"] ?? false,
        category: data["category"] ?? "",
        subCategory: data["subCategory"] ?? "",
        image: data["image"] ?? "",
        titleType: TitleType.stationaryAndPrinting,
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
      case TitleType.giftingAndMomentos:
        return giftingAndMomentosList;
      case TitleType.services:
        return servicesList;
      case TitleType.eventGoodies:
        return eventGoodiesList;
      case TitleType.stationaryAndPrinting:
        return stationaryAndPrintingList;
      default:
        return [];
    }
  }

  int getTotalCost() {
    return stageAndDecorTotalCost.value +
        lightsAndSoundTotalCost.value +
        giftingAndMomentosTotalCost.value +
        servicesTotalCost.value +
        eventGoodiesTotalCost.value +
        stationaryAndPrintingTotalCost.value;
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
      case TitleType.eventGoodies:
        eventGoodiesTotalCost += item.price.toInt();
        eventGoodiesSelectedItems.add(item);
      case TitleType.stationaryAndPrinting:
        stationaryAndPrintingTotalCost += item.price.toInt();
        stationaryAndPrintingSelectedItems.add(item);
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
      case TitleType.eventGoodies:
        eventGoodiesTotalCost -= itemPrice;
        eventGoodiesSelectedItems.remove(item);
        break;
      case TitleType.stationaryAndPrinting:
        stationaryAndPrintingTotalCost -= itemPrice;
        stationaryAndPrintingSelectedItems.remove(item);
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
    if (eventGoodiesTotalCost < 0) {
      eventGoodiesTotalCost = 0.obs;
    }
    if (stationaryAndPrintingTotalCost < 0) {
      stationaryAndPrintingTotalCost = 0.obs;
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
      case TitleType.eventGoodies:
        return eventGoodiesSelectedItems
            .where((selectedItem) => selectedItem == item)
            .length;
      case TitleType.stationaryAndPrinting:
        return stationaryAndPrintingSelectedItems
            .where((selectedItem) => selectedItem == item)
            .length;
      default:
        return 0;
    }
  }

  void updateTotalItemsInTheCart() {
    totalItemsInTheCart = [
      ...servicesSelectedItems,
      ...stageAndDecorSelectedItems,
      ...giftingAndMomentosSelectedItems,
      ...lightsAndSoundSelectedItems,
      ...eventGoodiesSelectedItems,
      ...stationaryAndPrintingSelectedItems
    ].obs;
  }
}
