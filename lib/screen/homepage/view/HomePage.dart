import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malpani/constants/constants.dart';
import 'package:malpani/screen/cart/view/Cart.dart';
import 'package:malpani/screen/homepage/controller/HomePageController.dart';
import 'package:malpani/screen/more/controller/ShoppingCartController.dart';
import 'package:malpani/screen/more/view/More.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController controller = HomePageController();
  final ShoppingCartController shoppingCartController =
      ShoppingCartController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => CartPage(cartController: shoppingCartController));
        },
        backgroundColor: const Color.fromARGB(255, 103, 172, 78),
        child: const Icon(Icons.shopping_cart),
      ),
      backgroundColor: kBackgroundcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  child: Hero(
                    tag: "title",
                    child: Text(
                      'Event Essence',
                      style: TextStyle(
                          fontSize: 50,
                          fontFamily: 'CuteFont',
                          color: Color(0xFF66545e)),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Stage & Decore",
                        style: TextStyle(
                          fontFamily: 'KDam',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      GestureDetector(
                        child: const Text(
                          "More",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => More(
                                title: "Stage & Decore",
                                itemList: controller.stageAndDecorList,
                                cartController: shoppingCartController,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.stageAndDecorList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          controller.stageAndDecorList[index].image,
                          width: 300,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Event Goodies",
                        style: TextStyle(
                          fontFamily: 'KDam',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      GestureDetector(
                        child: const Text(
                          "More",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => More(
                                title: "Event Goodies",
                                itemList: controller.eventGoodiesList,
                                cartController: shoppingCartController,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/hwithoutprint.webp",
                          width: 150,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/hwithprint.jpg",
                          width: 150,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/medals.jpeg",
                          width: 150,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/certificate.jpeg",
                          width: 150,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                // child: ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //   itemCount: controller.eventGoodiesList.length,
                //   itemBuilder: (BuildContext context, int index) {
                // return Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(10.0),
                //     child: Image.asset(
                //       controller.eventGoodiesList[index].image,
                //       width: 300,
                //       height: 80,
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // );
                //   },
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
