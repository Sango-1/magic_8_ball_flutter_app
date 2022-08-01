import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BodyPage());
  }
}

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: CupertinoColors.activeBlue,
        title: Text(
          "Ask me anything",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    var automatenumber = () {
      ballnumber = Random().nextInt(2) + 1;
    };
    return Container(
      child: Center(
        child: FlatButton(
            onPressed: () {
              setState(() {
                automatenumber();
              });
            },
            child: Image.asset("assets/images/ball$ballnumber.png")),
      ),
    );
  }
}
