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
      margin: EdgeInsets.symmetric(vertical: 7, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: const Border(
          right: BorderSide(width: 4, color: Colors.black),
          top: BorderSide(width: 2, color: Colors.black),
          left: BorderSide(width: 2, color: Colors.black),
          bottom: BorderSide(width: 4, color: Colors.black),
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
                      controller.stageAndDecorTotalCost -= item.price.toInt();
                      controller.stageAndDecorSelectedItems.remove(item);
                    },
                    icon: Icon(Icons.remove),
                  ),
                  Text(controller.stageAndDecorSelectedItems
                      .where((selectedItem) => selectedItem == item)
                      .length
                      .toString()),
                  IconButton(
                    onPressed: () {
                      controller.stageAndDecorTotalCost += item.price.toInt();
                      controller.stageAndDecorSelectedItems.add(item);
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
