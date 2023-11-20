import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 84, 90),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * 0.15,
            ),
            const Align(
              child: Text(
                "Malpani Decors",
                style: TextStyle(
                    fontFamily: 'KDam',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: Get.height * 0.2,
            ),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 40.0,
                fontFamily: 'CuteFont',
              ),
              child: AnimatedTextKit(
                pause: Duration(milliseconds: 200),
                isRepeatingAnimation: true,
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText('Weddings',
                      speed: Duration(milliseconds: 200)),
                  TypewriterAnimatedText('Gatherings',
                      speed: Duration(milliseconds: 200)),
                  TypewriterAnimatedText('Farewells',
                      speed: Duration(milliseconds: 200)),
                  TypewriterAnimatedText('Eventss',
                      speed: Duration(milliseconds: 200)),
                ],
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            SizedBox(
              height: Get.height * 0.1,
            ),
            const Text(
              "One Stop Solution for all events",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed('/home');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 100, 104),
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
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Let's Explore",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
