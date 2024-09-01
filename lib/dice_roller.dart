import 'dart:math';
import 'package:flutter/material.dart';

class _DiceRollerState extends State<DiceRoller> {
  int diceNumber = 2;

  rollDice () {
    int random = 0;

    do {
      random = Random().nextInt(6) + 1;
    } while (random == diceNumber);

    setState(() {
      diceNumber = random;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 24,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              )),
          child: const Text('ROLL DICE'),
        ),
      ],
    );
  }
}

class DiceRoller extends StatefulWidget {
  const DiceRoller({ super.key });
  
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}