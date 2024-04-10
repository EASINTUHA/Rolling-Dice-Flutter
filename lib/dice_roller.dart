import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer=Random();
  var currentDiceRoll=1;

  void rollDice() {
    setState(() {
        currentDiceRoll=randomizer.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/diace$currentDiceRoll.jpeg',
          height: 200,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: () {
            rollDice();
          },
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 241, 241, 235),
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}