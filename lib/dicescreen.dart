import 'package:flutter/material.dart';
import 'dart:math';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            "Roll Dice",
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '🎲${diceNumber.toString()}',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 100),
            ),

            SizedBox(height: 40),

            ElevatedButton(onPressed: rollDice, child: Text("click me ")),
          ],
        ),
      ),
    );
  }
}
