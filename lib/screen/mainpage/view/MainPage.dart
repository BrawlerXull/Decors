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
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                    ),
                    padding: const EdgeInsets.all(16.0),
                    itemCount: TitleType.values.length,
                    itemBuilder: (BuildContext context, int index) {
                      List<TitleType> values = TitleType.values;
                      return MainPageGridTile(
                        title: values[index].title,
                        titleType: values[index],
                      );
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/contact');
                  },
                  child: const Text(
                    "Contact Us",
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
