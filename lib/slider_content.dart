import 'package:flutter/material.dart';
import './constant.dart';

class SliderContent extends StatelessWidget {
  const SliderContent({
    this.color,
    this.text,
    this.height,
    this.onChange,
  });

  final Color color;
  final String text;
  final double height;
  final onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: kFontSize,
          ),
        ),
        SizedBox(
          height: kSpacingHeight,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            Text(
              height.toString(),
              style: kNumberText,
            ),
            Text(
              'cm',
              style: TextStyle(
                color: color,
                fontSize: kFontSize,
              ),
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 12,
              ),
              overlayShape: RoundSliderOverlayShape(
                overlayRadius: 22,
              ),
              thumbColor: kThumbColor,
              overlayColor: kThumbOverlayColor,
              activeTrackColor: Colors.white,
              inactiveTrackColor: kTextColor),
          child: Slider(
            value: height,
            min: 50.0,
            max: 300.0,
            divisions: 500,
            onChanged: onChange,
          ),
        )
      ],
    );
  }
}
