import 'package:flutter/material.dart';
import '../constant.dart';

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
        margin: EdgeInsets.all(kMarginSize),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        child: child,
      ),
    );
  }
}
