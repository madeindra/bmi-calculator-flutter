import 'package:flutter/material.dart';

final double marginSize = 15.0;
final double borderRadius = 10.0;

class CustomContainer extends StatelessWidget {
  const CustomContainer({this.child, this.color});

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(marginSize),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
