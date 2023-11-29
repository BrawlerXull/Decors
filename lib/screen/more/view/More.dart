import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX for state management
import 'package:malpani/model/ItemModel.dart';
import 'package:malpani/screen/more/controller/MorePageController.dart';
import 'package:malpani/screen/more/controller/ShoppingCartController.dart';

class More extends StatefulWidget {
  final String title;
  final List<Item> itemList;
  final ShoppingCartController cartController = ShoppingCartController();

  More({Key? key, required this.title, required this.itemList})
      : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    print(widget.itemList);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 180, 108),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 228, 180, 108),
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 500,
            child: ListView.builder(
              itemCount: widget.itemList.length,
              itemBuilder: (BuildContext context, int index) {
                MorePageController controller = MorePageController();
                return ItemTile(
                  item: widget.itemList[index],
                  controller: controller,
                  cartController: widget.cartController,
                );
              },
            ),
          ),
          SizedBox(height: 20),
          Obx(
            () => Text(
              'Total Price: ₹${widget.cartController.totalPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class ItemTile extends StatefulWidget {
  final Item item;
  final MorePageController controller;
  final ShoppingCartController cartController;

  const ItemTile({
    Key? key,
    required this.item,
    required this.controller,
    required this.cartController,
  }) : super(key: key);

  @override
  _ItemTileState createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Obx(
        () => ListTile(
          title: Text(widget.item.name),
          subtitle: Text('\₹${widget.item.price.toString()}'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  if (widget.controller.quantity.value > 0) {
                    widget.controller.decreaseQuantity();
                    widget.cartController.cartItems.remove(widget.item);
                  }
                },
                icon: Icon(Icons.remove),
              ),
              Text(widget.controller.quantity.toString()),
              IconButton(
                onPressed: () {
                  widget.controller.increaseQuantity();
                  widget.cartController.cartItems.add(widget.item);
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
