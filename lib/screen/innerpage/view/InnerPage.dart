// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malpani/screen/innerpage/controller/InnerPageController.dart';
import 'package:malpani/screen/mainpage/view/MainPage.dart';
import 'package:malpani/utils/constants.dart';
import 'package:malpani/utils/titleEnum.dart';
import 'package:malpani/widget/Itemtile.dart';

class InnerPage extends GetView<InnerPageController> {
  @override
  Widget build(BuildContext context) {
    final TitleType titleType = Get.arguments as TitleType;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Utils.kBackgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Align(
                child: Text(
                  titleType.title,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ItemTile(item: controller.getList(titleType)[index]);
                  },
                  itemCount: controller.getList(titleType).length,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
