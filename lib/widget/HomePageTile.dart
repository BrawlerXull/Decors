import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../constants/constants.dart';

class HomePageTile extends StatelessWidget {
  final int index;

  const HomePageTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int randomNumber = random.nextInt(4) + 1;
    return GestureDetector(
      onTap: () {
        if (index < pageNames.length && pageNames[index] != null) {
          Get.toNamed(pageNames[index]);
        }
      },
      child: Card(
        color: const Color(0xFFfff9d4),
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
            decoration: BoxDecoration(
              color: (randomNumber % 4 == 0)
                  ? const Color(0xFFd2fafd)
                  : (randomNumber % 4 == 1)
                      ? const Color(0xFFc9ffc7)
                      : (randomNumber % 4 == 2)
                          ? const Color(0xFFF5CDDE)
                          : const Color(0xFFF9ECBB),
              borderRadius: BorderRadius.circular(20.0),
              border: const Border(
                top: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
                bottom: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
                left: BorderSide(
                  color: Colors.black,
                  width: 2.0,
                ),
                right: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (index < images.length && images[index] != null)
                  Hero(
                    tag: index.toString(),
                    child: Image.asset(
                      images[index],
                      height: 100,
                    ),
                  ),
                const SizedBox(height: 12),
                Text(
                  title[index],
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
