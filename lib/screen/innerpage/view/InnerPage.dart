import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malpani/screen/innerpage/controller/InnerPageController.dart';
import 'package:malpani/utils/constants.dart';
import 'package:malpani/utils/titleEnum.dart';
import 'package:malpani/widget/Itemtile.dart';

class InnerPage extends GetView<InnerPageController> {
  @override
  Widget build(BuildContext context) {
    final TitleType titleType = Get.arguments['titletype'] as TitleType;
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        titleType.title,
                        style:
                            const TextStyle(fontSize: 20, fontFamily: 'KDam'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                  ),
                  padding: const EdgeInsets.all(16.0),
                  itemCount: controller.getList(titleType).length,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemTile(
                      item: controller.getList(titleType)[index],
                      titleType: titleType,
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: const Border(
                    right: BorderSide(width: 4, color: Colors.black),
                    top: BorderSide(width: 2, color: Colors.black),
                    left: BorderSide(width: 2, color: Colors.black),
                    bottom: BorderSide(width: 4, color: Colors.black),
                  ),
                ),
                padding: const EdgeInsets.all(8),
                child: Obx(() => Text(
                      'Total Cost: ₹${controller.getTotalCost()}',
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
