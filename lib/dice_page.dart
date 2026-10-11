import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1 + Random().nextInt(6);
  int rightDice = 1 + Random().nextInt(6);

  void rollDice() {

    setState(() {
        leftDice = 1 + Random().nextInt(6);
        rightDice = 1 + Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Try Your Luck'),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset('assets/images/dice$leftDice.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset('assets/images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'YOUR TOTAL IS:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            (leftDice + rightDice).toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          if ((leftDice + rightDice) == 12)
            const Text(
              'Congratulations',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}
