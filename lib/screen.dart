import 'package:flutter/material.dart';
import 'package:practice_flutter_1_dice_roller/dice_roller.dart';

class Screen extends StatelessWidget {
  final List<Color> gradientColors;

  const Screen({super.key, required this.gradientColors});

  Screen.redToGreen({super.key}) : gradientColors = [Colors.red, Colors.green];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
