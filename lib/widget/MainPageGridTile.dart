import 'package:flutter/material.dart';

class MainPageGridTile extends StatelessWidget {
  final String title;
  const MainPageGridTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(border: Border.all(width: 2)),
        ),
        Text(title),
      ],
    );
  }
}
