import 'package:flutter/material.dart';
import 'package:malpani/constants/constants.dart';
import 'package:malpani/widget/HomePageTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFfff9d4),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  'Malpani Decors',
                  style: TextStyle(fontSize: 50, fontFamily: 'CuteFont' ,color: Color(0xFF66545e)),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: title.length,
                itemBuilder: (BuildContext context, int index) {
                  return HomePageTile(index: index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
