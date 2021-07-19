import 'package:flutter/material.dart';
import 'constant.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    this.icon,
    this.onPress,
  });

  final Icon icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 6.0,
      fillColor: kDualButtonColor,
      onPressed: onPress,
      child: icon,
    );
  }
}
