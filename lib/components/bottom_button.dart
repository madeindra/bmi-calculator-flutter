import 'package:flutter/material.dart';
import '../constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({this.child, this.onTap});

  final Widget child;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: kButtonColor,
        width: double.infinity,
        height: kButtonHeight,
        margin: EdgeInsets.only(
          top: kButtonMargin,
        ),
        padding: EdgeInsets.only(
          bottom: 7,
        ),
        child: Center(
          child: this.child,
        ),
      ),
      onTap: onTap,
    );
  }
}
