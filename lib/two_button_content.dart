import 'package:flutter/material.dart';
import './round_icon_button.dart';
import './constant.dart';

class TwoButtonContent extends StatelessWidget {
  const TwoButtonContent({
    this.title,
    this.value,
    this.onSubstract,
    this.onAdd,
  });

  final String title;
  final double value;
  final onSubstract;
  final onAdd;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(color: kTextColor, fontSize: kFontSize),
        ),
        Text(
          value.toString(),
          style: kNumberText,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: Icon(Icons.remove),
              onPress: onSubstract,
            ),
            SizedBox(
              width: 10,
            ),
            RoundIconButton(
              icon: Icon(Icons.add),
              onPress: onAdd,
            ),
          ],
        )
      ],
    );
  }
}
