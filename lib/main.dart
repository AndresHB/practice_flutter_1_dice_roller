import 'package:flutter/material.dart';
import 'package:practice_flutter_1_dice_roller/screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Screen(
          gradientColors: [Colors.orange, Colors.yellow],
        ),
      ),
    ),
  );
}
