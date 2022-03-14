import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: const Text(
                'Dice Name',
            ),
            backgroundColor: Colors.deepPurple,
          ),
          body:const DiceApp(),
        ),
      ),
  );
}
class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNum = 1;
  int rightDiceNum =2;
  @override
  Widget build(BuildContext context) {
    void changeState(){
      setState(() {
        leftDiceNum = Random().nextInt(6)+1;
        rightDiceNum = Random().nextInt(6)+1;
      });
    }
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                child: Image.asset('images/dice$leftDiceNum.png'),
                onPressed: (){
                  changeState();
                },
              ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNum.png'),
              onPressed: (){
                changeState();
              },
            ),
          ),
        ],
      ),
    );
  }
}

