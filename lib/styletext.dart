import 'package:flutter/material.dart';
class Styletext extends StatelessWidget{
  Styletext (String text,{super.key}):outputText=text;

  String outputText;

  @override
  Widget build(context){
    return Text(
      outputText,
      style:const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}