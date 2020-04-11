import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<DicePage> {
  final random = Random();
  int firstDiceOutcome = 1;
  int secondDiceOutcome = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset("images/dice$firstDiceOutcome.png"),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  rollDice();
                },
                child: Image.asset("images/dice$secondDiceOutcome.png"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.0,
        ),
        IconButton(
          onPressed: () {
            rollDice();
          },
          icon: Icon(
            Icons.refresh,
            color: Colors.white,
            size: 32.0,
          ),
        ),
      ],
    );
  }

  void rollDice() {
    setState(() {
      firstDiceOutcome = random.nextInt(6) + 1;
      secondDiceOutcome = random.nextInt(6) + 1;
    });
  }
}
