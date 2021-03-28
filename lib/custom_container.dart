import 'package:flutter/material.dart';

final double marginSize = 15.0;
final double borderRadius = 10.0;

class CustomContainer extends StatelessWidget {
  const CustomContainer({this.child, this.color, this.onTap});

  final Widget child;
  final Color color;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(marginSize),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: child,
      ),
    );
  }
}
