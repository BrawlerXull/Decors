// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:malpani/model/ItemModel.dart';
import 'package:malpani/screen/innerpage/controller/InnerPageController.dart';
import 'package:malpani/utils/titleEnum.dart';

class ItemTile extends StatelessWidget {
  final Item item;
  final TitleType titleType;

  const ItemTile({
    Key? key,
    required this.item,
    required this.titleType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InnerPageController controller = Get.find<InnerPageController>();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 8),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(width: 2, color: Colors.black),
          top: BorderSide(width: 2, color: Colors.black),
          left: BorderSide(width: 2, color: Colors.black),
          bottom: BorderSide(width: 2, color: Colors.black),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx(() => ListTile(
              title: Text(item.name),
              subtitle: Text('\₹${item.price.toString()}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      if (controller.getSelectedItemCount(item, titleType) !=
                          0) {
                        controller.removeItem(item, titleType);
                      }
                    },
                    icon: const Icon(Icons.remove),
                  ),
                  Text(controller
                      .getSelectedItemCount(item, titleType)
                      .toString()),
                  IconButton(
                    onPressed: () {
                      // if (controller.getTotalCost() < budget) {
                      controller.addItem(item, titleType);
                      // }
                      //  else {
                      // Get.snackbar("Budget Exceeded",
                      // 'Current buget is $budget adding the next item will make it ${budget + item.price}');
                      // }
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
