import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DicePage());
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("DICEE"),
        backgroundColor: Colors.red,
      ),
      body: const DicePageContainer(),
      backgroundColor: Colors.red,
    ));
  }
}

class DicePageContainer extends StatefulWidget {
  const DicePageContainer({super.key});

  @override
  State<DicePageContainer> createState() => _DicePageContainerState();
}

class _DicePageContainerState extends State<DicePageContainer> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 3;
  void changeDiceFace() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () => {
                  setState(() {
                    changeDiceFace();
                  })
                },
                child: Image.asset("../images/dice$leftDiceNumber.png"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => {
                  setState(() {
                    changeDiceFace();
                  }),
                },
                child: Image.asset("../images/dice$rightDiceNumber.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
