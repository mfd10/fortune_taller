import 'package:flutter/material.dart';
import 'package:fortune_taller/home_page.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    const HomePage();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: const Text(
            "Daily Predicts",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: const HomePage(),
      ),
    );
  }
}
