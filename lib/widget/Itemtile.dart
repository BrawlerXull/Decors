import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:malpani/model/ItemModel.dart';

class ItemTile extends StatelessWidget {
  final Item item;

  const ItemTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: ListTile(
          title: Text(item.name),
          subtitle: Text('\₹${item.price.toString()}'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove),
              ),
              Text("0"),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
