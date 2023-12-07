import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malpani/screen/mainpage/view/MainPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 4), () {
      Get.off(() => MainPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Event Essence.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'Event Essence',
                    textStyle: const TextStyle(
                      fontSize: 60.0,
                      fontFamily: 'Aprilia',
                      color: Color(0xFF3F5888),
                    ),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'your event our expertise',
                    textStyle: const TextStyle(
                        fontFamily: 'CuteFont',
                        fontSize: 30.0,
                        color: Color(0xFF004AAD)),
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
            ],
          ))
        ],
      ),
    );
  }
}