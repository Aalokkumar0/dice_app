import 'package:dice_app/diceScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: DiceScreen(),
    );
  }
}
