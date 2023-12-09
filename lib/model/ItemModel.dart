// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:malpani/utils/titleEnum.dart';

class Item {
  String name;
  double price;
  bool isAvailable;
  String category;
  String subCategory;
  String image;
  TitleType titleType;

  Item({
    required this.name,
    required this.price,
    required this.isAvailable,
    required this.category,
    required this.subCategory,
    required this.image,
    required this.titleType,
  });
}
