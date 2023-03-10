import 'package:flutter/material.dart';

class iconset extends StatelessWidget {
  iconset({required this.icon, required this.lable});
  final IconData icon;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          lable,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
