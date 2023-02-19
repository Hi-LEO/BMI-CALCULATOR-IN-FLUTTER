import 'package:flutter/material.dart';
import 'result_page.dart';
import 'package:bmi/bmi_brain.dart';
import 'package:bmi/input_file.dart';
import 'package:bmi/constant.dart';

class calculate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        calculator cal = calculator(Height: height, WEIGHT: Weight);
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return result(
            bmiresult: cal.bmicalculate(),
            bmiresulteng: cal.bmianswer(),
            bmiadvice: cal.advice(),
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.only(top: 6.0),
        padding: EdgeInsets.all(10.0),
        height: 80.0,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            'CALCULATE',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
