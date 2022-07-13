import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //to refactor ALT + ENTER
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      if (_questionIndex > questions.length - 1) {
        _questionIndex = 0;
      }
    });
    debugPrint('Question printed number: ' + (_questionIndex + 1).toString());
  }

  var _questionIndex = 0;
  static const questions = [
    {
      'questionText': 'Jaki jest Twój ulubiony kolor?',
      'answers': ['Czarny', 'Czerwony', 'Zielony', 'Biały'],
    },
    {
      'questionText': 'Jakie jest Twoje ulubione zwierze?',
      'answers': ['Kot', 'Pies', 'Koń', 'Chomik','Myszoskoczek'],
    },
    {
      'questionText': 'Kto jest Twoim ulubionym aktorem?',
      'answers': ['Johnny Depp', 'Bruce Willis', 'Cezary Pazura', 'Cezary Żak'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
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
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
            // ElevatedButton(
            //   onPressed: () {
            //     answerQuestion(1);
            //   },
            //   child: Text('1'),
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.grey,
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     answerQuestion(2);
            //   },
            //   child: Text(
            //     '2',
            //   ),
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.green,
            //   ),
            // ),

            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion)
          ],
        ),
      ),
    );
  }
}
