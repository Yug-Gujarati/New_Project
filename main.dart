import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState(){ 
    return _MyAppState();
  }
  
}

class _MyAppState extends State<MyApp> { // State is use to ceate muatebal class which is stateful type
   final _questions = const[
      {'questionText':'What\'s your fav colour ?' ,
        'answer': [
        {'text': 'RED' ,'score':10}, 
        {'text': 'White' ,'score':5},  
        {'text': 'GREEN' ,'score':3},  
        {'text': 'BLACK' ,'score':2}, 
        ],
      },
       {'questionText':'What\'s your fav nation ?' ,
        'answer': [
        {'text': 'INDIA', 'score':10}, 
        {'text': 'US', 'score':5}, 
        {'text': 'UK', 'score':3},
        {'text': 'JAPAN', 'score':1},
         ],
      },
       {'questionText':'What\'s your fav fruit ?' ,
        'answer': [
          {'text': 'MANGO', 'score':10}, 
          {'text': 'APPLE', 'score':5},
         {'text': 'GRAPSS', 'score':2},  
         {'text': 'WATERMALON', 'score':1}, 
         ],
      },
    ];
     var _questionIndex = 0;
     var _totalScore = 0;

     void _resetQuiz(){
        setState(() {
          _questionIndex =0;
          _totalScore =0;
        });
     }
    
      void _answerQuestion(int score){
        _totalScore += score;
        
        setState(() {
          _questionIndex = _questionIndex + 1;
        });
        
        print(_questionIndex);
        if(_questionIndex < _questions.length ){
            print("We have more questions");
        }
        else {
              print("NO more qustions");
        }
      }

  @override
  Widget build(BuildContext context){
   
    

    
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:  const Text('This App is for tests '),
          ),
          body: _questionIndex < _questions.length 
              ? Quiz(answerQuestion: _answerQuestion , 
                     questionIndex: _questionIndex ,
                     questions: _questions,
                     )
        : Result(_totalScore , _resetQuiz),
          
          ),
    );
  }
}