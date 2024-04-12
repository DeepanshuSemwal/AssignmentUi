import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/homescreen.dart';
import 'package:flutter_application_1/widget/custumappbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int coinsdata = 8808;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: HomeScreen(),
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("FireApp X"),
            actions: [
              Container(
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    border: Border.all(
                        //color: Colors.white,
                        ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 25,
                        child: const Image(
                          image: AssetImage("assets/images/icon-coin.png"),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        coinsdata.toString(),
                        style: const TextStyle(
                          fontSize: 21,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
