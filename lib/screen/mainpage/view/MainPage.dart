import 'package:flutter/material.dart';
import 'package:malpani/widget/MainPageGridTile.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Event Essence.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "#EventGameStrongerTogether",
                  style: TextStyle(
                    fontFamily: 'KDam',
                    fontSize: 20,
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
                        hintText: "Search for faster reach :)",
                      ),
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
                      return const MainPageGridTile(
                        title: "Stage & Decore",
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
