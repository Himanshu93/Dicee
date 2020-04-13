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
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNum = 1;
  var rightDiceNum = 1;
  
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rollDice();
                });
                build(context);
              },
              child: Image.asset(
                'images/dice$leftDiceNum.png',
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rollDice();
                });
              },
              child: Image.asset(
                'images/dice$rightDiceNum.png',
              ),
            ),
          ),
        ],
      ),
    );
  }

  void rollDice() {
    leftDiceNum = Random().nextInt(6)+1;
    rightDiceNum = Random().nextInt(6)+1;
  }
}