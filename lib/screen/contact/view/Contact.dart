import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:lottie/lottie.dart';
import 'package:malpani/utils/constants.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController queryController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Utils.kBackgroundImage),
              ),
            ),
          ),
          SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Contact Us",
                  style: TextStyle(fontFamily: 'CuteFont', fontSize: 50),
                ),
                Center(
                  child: Lottie.asset("assets/svg.json", height: 300),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          hintText: 'Enter your name',
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: phoneController,
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          hintText: 'Enter your phone number',
                          prefixIcon: Icon(Icons.phone),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: queryController,
                        decoration: const InputDecoration(
                          labelText: 'Query',
                          hintText: 'Enter your query',
                          prefixIcon: Icon(Icons.question_answer),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          String name = nameController.text;
                          String phone = phoneController.text;
                          String query = queryController.text;
                          print('Name: $name, Phone: $phone, Query: $query');
                        },
                        child: const Text('Submit'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: const Icon(FontAwesomeIcons.facebook),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(FontAwesomeIcons.instagram),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(FontAwesomeIcons.twitter),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
