import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; // Updated type to VoidCallback
  String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
          ),
          onPressed: selectHandler,
          child: Text(answerText),
        ),
      ),
    );
  }
}
