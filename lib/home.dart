import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

class HomeScreen extends StatefulWidget {
  //const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _questions=const[
    {
      'questionText':'What is your fav color?',
      'answers':[
        {'text':'Black','score':10},
        {'text':'Red','score':7},
        {'text':'Blue','score':5},
        {'text':'White','score':1},
      ]
    },
    {
      'questionText':'What is your fav animal?',
      'answers':[
        {'text':'Lion','score':10},
        {'text':'Cow','score':7},
        {'text':'Dog','score':5},
        {'text':'Cat','score':1},
      ]
    },
    {
      'questionText':'What is your fav Movie?',
      'answers':[
        {'text':'Forrest Gump','score':10},
        {'text':'Godfather','score':7},
        {'text':'Psycho','score':5},
        {'text':'Twilight','score':1},
      ]
    },
    {
      'questionText':'What is your fav day?',
      'answers':[
        {'text':'Sunday','score':10},
        {'text':'Saturday','score':7},
        {'text':'Wednesday','score':5},
        {'text':'Monday','score':1},
      ]
    },

  ];
  var _questionIndex=0;
  var _totalScore=0;

  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }


  void _answerQuestion(int score){
    _totalScore+=score;
    setState((){
      _questionIndex=_questionIndex+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz App"),
      ),
      body: _questionIndex<_questions.length?
          Quiz(answerQuestion: _answerQuestion,
               questionIndex: _questionIndex,
               questions: _questions,
               )
          : Result(_totalScore, _resetQuiz),
        
      );
    
    
  }
}