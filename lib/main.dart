import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Rolling Dice'),
          backgroundColor: Colors.red,
        ),
        body: RollingDice(),
      ),
    ),
  );
}

class RollingDice extends StatefulWidget {
  @override
  _RollingDiceState createState() => _RollingDiceState();
}

class _RollingDiceState extends State<RollingDice> {
  int _dice1 = 1;
  int _dice2 = 2;

  void _roll() {
    setState(() {
      _dice1 = Random().nextInt(6) + 1;
      _dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$_dice1.png'),
              onPressed: () => _roll(),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$_dice2.png'),
              onPressed: () => _roll(),
            ),
          ),
        ],
      ),
    );
  }
}
