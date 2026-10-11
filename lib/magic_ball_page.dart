import 'package:flutter/material.dart';
import 'dart:math';

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({super.key});

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int ball = Random().nextInt(5) + 1;

  void changeBall() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        title: const Text('Ask Me Anything'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: changeBall,
          child: Image.asset('assets/images/ball$ball.png'),
        ),
      ),
    );
  }
}
