import 'package:flutter/material.dart';

class FlowerPageTile extends StatelessWidget {
  final int index;

  const FlowerPageTile({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Image.asset(
                  "assets/rose.png",
                  height: 70,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rose",
                      style:
                          TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "100 rs / 1000 flowers",
                      style:
                          TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
