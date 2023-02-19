import 'package:flutter/material.dart';

class listBox extends StatelessWidget {
  listBox({
    required this.colour,
    required this.cardChild,
  });
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      height: 200.0,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
