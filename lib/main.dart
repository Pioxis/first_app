import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion(int number){
    debugPrint('Answer choosen ' + number.toString());
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Udemy course'),
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Jakiego koloru jest trawa?'),
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
              onPressed: (){
                answerQuestion(2);
              },
              child: Text('2'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('3'),
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
