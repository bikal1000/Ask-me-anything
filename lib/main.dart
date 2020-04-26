import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Center(
              child: Text('Ask Me Anything'),
            ),
          ),
          body: MagicBalls(),
        ),
      ),
    );

class MagicBalls extends StatefulWidget {
  @override
  _MagicBallsState createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {
  var diceNumber = 1;
  void getDiceNumber() {
    diceNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                getDiceNumber();
              });
            },
            child: Image.asset('images/ball$diceNumber.png'),
          ),
        ),
      ],
    );
  }
}
