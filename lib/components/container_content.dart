import 'package:flutter/material.dart';
import '../constant.dart';

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
          size: kIconSize,
        ),
        SizedBox(
          height: kSpacingHeight,
        ),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: kFontSize,
          ),
        )
      ],
    );
  }
}
