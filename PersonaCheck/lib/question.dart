import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(
      this.questionText); // {}-->named argument without {}-->positioned argument

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center, //enum-->list of predefined values
      ),
    );
  }
}
