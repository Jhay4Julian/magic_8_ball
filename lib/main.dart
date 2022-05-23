import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(child: Text('Ask Me Anything')),
        ),
        body: MagicBallPage(),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MagicBallPage extends StatefulWidget {

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int answerOptionNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('images/ball$answerOptionNumber.png'),
        ),
        onPressed: (){
          setState(() {
            answerOptionNumber = Random().nextInt(5) + 1;
          });
        },
      )
    );
  }
}