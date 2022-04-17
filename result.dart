import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function resetHandler;


  Result(this.resultScore , this.resetHandler);

  String get resultphrase{
    String resultText;
    if(resultScore <= 5 ){
      resultText  = 'YOU ARE FAIL';
    }
    else if(resultScore <= 10 && resultScore > 5){
      resultText = 'YOU ARE NOT DOING WELL';
    }
    else if(resultScore <=20){
      resultText = 'YOUT ARE SECOND';
    }
    else if(resultScore <= 30){
      resultText = 'YOU ARE FIRST';
    }
    return resultText;
  }
  
  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Column(
      children : <Widget>[
      Text(
        resultphrase ,
        style: TextStyle(fontSize: 36 , fontWeight: FontWeight.bold,),
        textAlign: TextAlign.center,
      ),
      FlatButton(child: Text(
              'Reset quiz \nMade by YUG GUJARARI'
          ),
          textColor: Colors.orange[900],
          onPressed: resetHandler,
      ),
      ],
      ),
    );
  }
}