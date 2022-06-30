import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //to refactor ALT + ENTER
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void answerQuestion(int number) {
    setState(() {
      questionIndex = questionIndex + 1;
      if (questionIndex > questions.length - 1) {
        questionIndex = 0;
      }
    });
    debugPrint('Answer choosen ' + number.toString());
  }

  var questionIndex = 0;
  var questions = ['Pytanie pierwsze?', 'Drugie Pytanie', 'Pytanie TRZECIE?'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Udemy course',
          ),
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Question(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: () {
                answerQuestion(1);
              },
              child: Text('1'),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                answerQuestion(2);
              },
              child: Text(
                '2',
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                '3',
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
