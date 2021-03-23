import 'package:flutter/material.dart';

final double iconSize = 80.0;
final double spacingHeight = 15.0;
final double fontSize = 18.0;

class ContainerContent extends StatelessWidget {
  ContainerContent({
    this.icon,
    this.color,
    this.text,
  });

  final Color color;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: spacingHeight,
        ),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
          ),
        )
      ],
    );
  }
}
