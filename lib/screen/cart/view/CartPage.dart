import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malpani/model/ItemModel.dart';
import 'package:malpani/screen/innerpage/controller/InnerPageController.dart';
import 'package:malpani/utils/constants.dart';
import 'package:malpani/widget/Itemtile.dart';

class CartPage extends GetView<InnerPageController> {
  @override
  Widget build(BuildContext context) {
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
              const Align(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        "Cart",
                        style: TextStyle(fontSize: 20, fontFamily: 'KDam'),
                      ),
                    ),
                  ],
                ),
              ),
              Obx(
                () => Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemBuilder: (context, index) {
                      return ItemTile(
                        item: controller.totalItemsInTheCart
                            .toSet()
                            .toList()[index],
                        titleType: controller.totalItemsInTheCart
                            .toSet()
                            .toList()[index]
                            .titleType,
                      );
                    },
                    itemCount: controller.totalItemsInTheCart.toSet().length,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16),
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
