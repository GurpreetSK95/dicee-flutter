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
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset("images/dice$firstDiceOutcome.png"),
              onPressed: () {
                setState(() {
                  rollDice();
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rollDice();
                });
              },
              child: Image.asset("images/dice$secondDiceOutcome.png"),
            ),
          ),
        ],
      ),
    );
  }

  void rollDice() {
    firstDiceOutcome = random.nextInt(6) + 1;
    secondDiceOutcome = random.nextInt(6) + 1;
  }
}
