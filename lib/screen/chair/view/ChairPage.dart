import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChairPage extends StatefulWidget {
  const ChairPage({Key? key}) : super(key: key);

  @override
  State<ChairPage> createState() => _ChairPageState();
}

class _ChairPageState extends State<ChairPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Hero(
                tag: "1",
                child: Align(
                  child: Image.asset(
                    "assets/chair.png",
                    height: 180,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("20 rs / Chair",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold))
            ],
          ),
          Column(
            children: [
              Text("Tell the number of chairs required",style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 50,),
              Container(
                height: 45,
                width: 80,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.black),
                ),

                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              TextButton(onPressed: null, child: Text("OK"),style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.lightBlueAccent),),),
            ],
          )
        ],
      ),
    );
  }
}
