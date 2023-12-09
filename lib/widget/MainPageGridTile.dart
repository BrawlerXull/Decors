import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malpani/screen/innerpage/view/InnerPage.dart';
import 'package:malpani/utils/routes.dart';
import 'package:malpani/utils/titleEnum.dart';

class MainPageGridTile extends StatelessWidget {
  final String title;
  final TitleType titleType;
  const MainPageGridTile({
    Key? key,
    required this.title,
    required this.titleType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.INNER, arguments: {
          'titletype': titleType,
        });
      },
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(border: Border.all(width: 2)),
          ),
          Text(
            title,
            style: TextStyle(fontFamily: 'CuteFont', fontSize: 20),
          ),
        ],
      ),
    );
  }
}
