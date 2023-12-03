import 'package:flutter/material.dart';
import 'package:malpani/constants/constants.dart';
import 'package:malpani/model/ItemModel.dart';
import 'package:malpani/screen/more/controller/ShoppingCartController.dart';

class CartPage extends StatefulWidget {
  final ShoppingCartController cartController;

  const CartPage({Key? key, required this.cartController}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Map<String, List<Item>> groupedItems = {};
    widget.cartController.cartItems.forEach((item) {
      groupedItems.putIfAbsent(item.name, () => []);
      groupedItems[item.name]!.add(item);
    });

    double totalCartPrice = widget.cartController.totalPrice;

    return Scaffold(
      backgroundColor: kBackgroundcolor,
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        backgroundColor: kBackgroundcolor,
      ),
      body: Column(
        children: [
          widget.cartController.cartItems.isEmpty
              ? const Expanded(
                  child: Align(
                    child: Text("Empty"),
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: groupedItems.length,
                    itemBuilder: (context, index) {
                      var itemName = groupedItems.keys.elementAt(index);
                      var itemQuantity = groupedItems[itemName]!.length;
                      var totalPrice = groupedItems[itemName]!
                          .map((item) => item.price)
                          .reduce((value, element) => value + element);

                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: const Border(
                            right: BorderSide(width: 4, color: Colors.black),
                            top: BorderSide(width: 2, color: Colors.black),
                            left: BorderSide(width: 2, color: Colors.black),
                            bottom: BorderSide(width: 4, color: Colors.black),
                          ),
                          color: const Color.fromARGB(255, 149, 226, 175),
                        ),
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                itemName,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      widget.cartController.cartItems.remove(
                                          groupedItems[itemName]!.first);
                                      setState(() {});
                                    },
                                    icon: const Icon(Icons.remove),
                                  ),
                                  Text(itemQuantity.toString()),
                                  IconButton(
                                    onPressed: () {
                                      widget.cartController.cartItems
                                          .add(groupedItems[itemName]!.first);
                                      setState(() {});
                                    },
                                    icon: const Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          subtitle: Text(
                            '₹${totalPrice.toStringAsFixed(2)}',
                            style: const TextStyle(
                                fontSize: 14, color: Colors.black),
                          ),
                        ),
                      );
                    },
                  ),
                ),
          const SizedBox(height: 20),
          Text(
            'Total Cart Price: ₹${totalCartPrice.toStringAsFixed(2)}',
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
