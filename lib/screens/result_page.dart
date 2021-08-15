import 'package:flutter/material.dart';
import '../constant.dart';
import '../components/custom_container.dart';
import '../components/bottom_button.dart';

enum Gender { male, female }

class ResultPage extends StatelessWidget {
  const ResultPage({
    this.gender,
    this.height,
    this.weight,
    this.age,
  });

  final Gender gender;
  final double height;
  final double weight;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Text(
              'Result',
              style: kTitleText,
            ),
          ),
          Expanded(
            child: CustomContainer(
              color: kCardActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'NORMAL',
                    style: kResultTypeText,
                  ),
                  Text(
                    '26.1',
                    style: kResultNumberText,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 25.0,
                    ),
                    child: Text(
                      'You have higher than normal BMI. Try to exercise more.',
                      style: kResultInfoText,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            flex: 5,
          ),
          BottomButton(
            child: Center(
              child: Text(
                'RE-CALCULATE',
                style: kLargeButtonText,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
