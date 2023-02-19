import 'package:bmi/reusablecard.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constant.dart';
import 'package:bmi/constant.dart';

class result extends StatelessWidget {
  result(
      {required this.bmiresult,
      required this.bmiadvice,
      required this.bmiresulteng});
  final String bmiresult;
  final String bmiresulteng;
  final String bmiadvice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALULATER')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(30.0),
            child: Text(
              'YOUR RESULT',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 40.0,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: listBox(
                colour: Color(0xFF1D1E33),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmiresulteng,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      bmiresult,
                      style: TextStyle(
                        fontSize: 90.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 150.0),
                      child: Text(
                        '<A bmi of 18.5-20.9 indicates that you are of a healthy weight>',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Text(
                      bmiadvice,
                      style: labletextstyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: listBox(
                  colour: Colors.red,
                  cardChild: Center(child: Text('RE-CALCULATE'))),
            ),
          ),
        ],
      ),
    );
  }
}
