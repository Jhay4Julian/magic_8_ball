import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
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
  int answerNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$answerNumber.png'),
        onPressed: (){
          setState(() {
            answerNumber = 2;
          });
        },
      )
    );
  }
}