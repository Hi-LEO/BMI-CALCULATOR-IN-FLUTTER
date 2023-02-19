import 'dart:ui';

import 'package:bmi/bmi_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecard.dart';
import 'iconcard.dart';
import 'constant.dart';
import 'secondscreen/calculatebutton.dart';

enum Gender {
  Male,
  female,
}

int height = 180;
int Weight = 40;

const activecolour = Color(0xFF1D1E33);
const inactivecolor = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

class bmicalculator extends StatefulWidget {
  @override
  State<bmicalculator> createState() => _bmicalculatorState();
}

class _bmicalculatorState extends State<bmicalculator> {
  Gender SelectedGender = Gender.Male;
  int AGE = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Center(
            child: Text('BMI CALCULATOR'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedGender = Gender.Male;
                      });
                    },
                    child: listBox(
                      colour: SelectedGender == Gender.Male
                          ? activecolour
                          : inactivecolor,
                      cardChild: iconset(
                        icon: FontAwesomeIcons.mars,
                        lable: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedGender = Gender.female;
                      });
                    },
                    child: listBox(
                      colour: SelectedGender == Gender.female
                          ? activecolour
                          : inactivecolor,
                      cardChild: iconset(
                        icon: FontAwesomeIcons.venus,
                        lable: "FEMALE",
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: listBox(
                colour: activecolour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: labletextstyle,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 50.0,
                          ),
                        ),
                        Text('cm'),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 16.0),
                        overlayColor: Colors.red[300],
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        activeColor: Colors.red,
                        inactiveColor: Colors.white38,
                        onChanged: (double newvalue) {
                          setState(() {
                            height = newvalue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: listBox(
                      colour: activecolour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: labletextstyle,
                          ),
                          Text(
                            Weight.toString(),
                            style: iconsize,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TabButton(
                                icon: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    Weight++;
                                  });
                                },
                              ),
                              TabButton(
                                icon: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    Weight--;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: listBox(
                      colour: activecolour,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: labletextstyle,
                          ),
                          Text(
                            this.AGE.toString(),
                            style: iconsize,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TabButton(
                                icon: FontAwesomeIcons.plus,
                                onpress: () {
                                  setState(() {
                                    AGE++;
                                  });
                                },
                              ),
                              TabButton(
                                icon: FontAwesomeIcons.minus,
                                onpress: () {
                                  setState(() {
                                    AGE--;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            calculate(),
          ],
        ));
  }
}

class TabButton extends StatelessWidget {
  TabButton({required this.icon, required this.onpress});
  final IconData icon;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        onpress();
      },
      child: Icon(icon),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(height: 60.0, width: 80.0),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  final Function onPressed;

  RoundedIconButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 0.0,
      onPressed: this.onPressed(),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    );
  }
}
