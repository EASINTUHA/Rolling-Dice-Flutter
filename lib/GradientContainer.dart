import 'package:first/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  // ignore: use_super_parameters
  GradientContainer({Key? key, required this.colors}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(

          //child: Styletext('Hello World 2'),
          /*Text(
          'hello world 2',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),*/
          child: DiceRoller(),
      
      ),
    );
  }
}
