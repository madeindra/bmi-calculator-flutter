import 'package:flutter/material.dart';
import '../constant.dart';
import '../calculator_brain.dart';
import '../components/custom_container.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments as CalculatorBrain;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
            child: Text(
              'Result',
              style: kTitleText,
            ),
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
          )),
          Expanded(
            child: CustomContainer(
              color: kCardActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    args.getResult().toUpperCase(),
                    style: kResultTypeText,
                  ),
                  Text(
                    args.getBMI(),
                    style: kResultNumberText,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 25.0,
                    ),
                    child: Text(
                      args.getDesc(),
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
