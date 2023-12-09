import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malpani/model/ItemModel.dart';
import 'package:malpani/screen/innerpage/controller/InnerPageController.dart';
import 'package:malpani/utils/titleEnum.dart';
import 'package:malpani/widget/Itemtile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malpani/screen/innerpage/controller/InnerPageController.dart';

class CartPage extends GetView<InnerPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Items in Cart:'),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.stageAndDecorSelectedItems.length +
                      controller.lightsAndSoundSelectedItems.length +
                      controller.giftingAndMomentosSelectedItems.length +
                      controller.servicesSelectedItems.length,
                  itemBuilder: (context, index) {
                    if (index < controller.stageAndDecorSelectedItems.length) {
                      return ItemTile(
                        item: controller.stageAndDecorSelectedItems[index],
                        titleType: TitleType.stageAndDecors,
                      );
                    } else if (index <
                        controller.stageAndDecorSelectedItems.length +
                            controller.lightsAndSoundSelectedItems.length) {
                      return ItemTile(
                        item: controller.lightsAndSoundSelectedItems[index -
                            controller.stageAndDecorSelectedItems.length],
                        titleType: TitleType.lightsAndSound,
                      );
                    } else if (index <
                        controller.stageAndDecorSelectedItems.length +
                            controller.lightsAndSoundSelectedItems.length +
                            controller.giftingAndMomentosSelectedItems.length) {
                      return ItemTile(
                        item: controller.giftingAndMomentosSelectedItems[index -
                            (controller.stageAndDecorSelectedItems.length +
                                controller.lightsAndSoundSelectedItems.length)],
                        titleType: TitleType.giftingAndMomentos,
                      );
                    } else {
                      return ItemTile(
                        item: controller.servicesSelectedItems[index -
                            (controller.stageAndDecorSelectedItems.length +
                                controller.lightsAndSoundSelectedItems.length +
                                controller
                                    .giftingAndMomentosSelectedItems.length)],
                        titleType: TitleType.services,
                      );
                    }
                  },
                ),
              ),
            ),
            Text('Total Cost: ₹${controller.getTotalCost()}'),
          ],
        ),
      ),
    );
  }
}
