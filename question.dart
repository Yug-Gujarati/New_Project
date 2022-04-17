//import 'dart:developer';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 30),
        textAlign: TextAlign.center,

      ),

    );
  }
}