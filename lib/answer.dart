import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //zmienna przyjmująca funkcję z zewnątrz do wykorzystania w tej klasie
  final Function selectHandler;
  final String answerText;

  //utworzenie konstruktora przyjmującego wskaźnik do funkcji
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler, //wykorzystanie funkcji z zewnątrz
        child: Text(
          answerText,
          style: TextStyle(color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.amber,
        ),
      ),
    );
  }
}
