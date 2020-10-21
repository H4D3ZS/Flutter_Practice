import 'package:flutter/material.dart';
// import './question.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color\'s',
      'What\'s your favorite animal\'s?',
      'What\'s Your Name?',
      'What\'s Your Gender?'
          'What\'s Your Citizenship?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Practice'),
        ),
        body: ListView(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestions),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print("Please Answer Me!!!")),
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestions),
          ],
        ),
      ),
    );
  }
}
