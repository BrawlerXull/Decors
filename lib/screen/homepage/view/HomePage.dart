import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:malpani/screen/homepage/controller/HomePageController.dart';
import 'package:malpani/widget/HomePageTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool x = true;
  final HomePageController controller = HomePageController();

  @override
  void initState() {
    print(
      dotenv.env['API_URL'],
    );
    controller.fetchAllTasks();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff9d4),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Hero(
                  tag: "title",
                  child: Text(
                    'Malpani Decors',
                    style: TextStyle(
                        fontSize: 50,
                        fontFamily: 'CuteFont',
                        color: Color(0xFF66545e)),
                  ),
                ),
              ),
            ),
            // Expanded(
            //   child: GridView.builder(
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //     ),
            //     itemCount: title.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return HomePageTile(index: index);
            //     },
            //   ),
            // ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Stage & Decore",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text("More")
                    ],
                  ),
                )),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  HomePageTile(index: 1),
                  HomePageTile(index: 2),
                  HomePageTile(index: 3),
                  HomePageTile(index: 4),
                ],
              ),
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Stage & Decore",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text("More")
                    ],
                  ),
                )),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  HomePageTile(index: 1),
                  HomePageTile(index: 2),
                  HomePageTile(index: 3),
                  HomePageTile(index: 4),
                ],
              ),
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Stage & Decore",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text("More")
                    ],
                  ),
                )),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  HomePageTile(index: 1),
                  HomePageTile(index: 2),
                  HomePageTile(index: 3),
                  HomePageTile(index: 4),
                ],
              ),
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Stage & Decore",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      Text("More")
                    ],
                  ),
                )),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  HomePageTile(index: 1),
                  HomePageTile(index: 2),
                  HomePageTile(index: 3),
                  HomePageTile(index: 4),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
