import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  //Konstruktor który przyjmuje wejściową wartość wpisywaną do zmiennej "this."
  //Nawiasy "wąski - {}" sprawiają, że wprowadzenie wartości jest opcjonalne
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    //CTRL + Spacja pokazuje parametry widgetu
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(12),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
