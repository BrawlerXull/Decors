import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malpani/utils/constants.dart';
import 'package:malpani/utils/routes.dart';
import 'package:malpani/utils/titleEnum.dart';
import 'package:malpani/widget/MainPageGridTile.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController budgetController = TextEditingController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.CART);
        },
        child: const Icon(Icons.shopping_cart),
        backgroundColor: const Color.fromARGB(255, 86, 191, 240),
      ),
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
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "#EventGameStrongerTogether",
                    style: TextStyle(
                      fontFamily: 'KDam',
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                    ),
                    height: 50,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        hintText: "Set your bugdet here :)",
                      ),
                      controller: budgetController,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                    ),
                    padding: const EdgeInsets.all(16.0),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      List<TitleType> values = TitleType.values;
                      return MainPageGridTile(
                        title: values[index].title,
                        titleType: values[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
