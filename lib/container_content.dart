import 'package:flutter/material.dart';

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
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}
