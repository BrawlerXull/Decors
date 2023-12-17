import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Colors.blue,
        ),
      ),
      child: Obx(
        () => ListTile(
          titleAlignment: ListTileTitleAlignment.center,
          title: Text(
            item.name,
            style: TextStyle(fontFamily: 'KDam', fontSize: 15),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '\₹${item.price.toString()}',
                style: TextStyle(
                  fontFamily: 'KDam',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                      controller.addItem(item, titleType);
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
