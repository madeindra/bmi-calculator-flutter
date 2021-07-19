import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './constant.dart';
import './custom_container.dart';
import './container_content.dart';
import './two_button_content.dart';
import './slider_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  double userHeight = 180;
  double userWeight = 60;
  int userAge = 18;

  void setGender(Gender gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  void setHeight(double height) {
    setState(() {
      userHeight = height;
    });
  }

  void addWeight() {
    setState(() {
      userWeight++;
    });
  }

  void subWeight() {
    setState(() {
      userWeight--;
    });
  }

  void addAge() {
    setState(() {
      userAge++;
    });
  }

  void subAge() {
    setState(() {
      userAge--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('BMI CALCULATOR'),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: CustomContainer(
                            onTap: () {
                              setGender(Gender.male);
                            },
                            color: selectedGender == Gender.male
                                ? kCardActiveColor
                                : kCardInactiveColor,
                            child: ContainerContent(
                              color: kTextColor,
                              icon: FontAwesomeIcons.mars,
                              text: 'Male',
                            ))),
                    Expanded(
                        child: CustomContainer(
                      onTap: () {
                        setGender(Gender.female);
                      },
                      color: selectedGender == Gender.female
                          ? kCardActiveColor
                          : kCardInactiveColor,
                      child: ContainerContent(
                        color: kTextColor,
                        icon: FontAwesomeIcons.venus,
                        text: 'Female',
                      ),
                    ))
                  ],
                ),
              ),
              Expanded(
                child: CustomContainer(
                  color: kCardActiveColor,
                  child: SliderContent(
                    color: kTextColor,
                    text: 'Height',
                    height: userHeight,
                    onChange: setHeight,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CustomContainer(
                        color: kCardActiveColor,
                        child: TwoButtonContent(
                          title: 'Height',
                          value: userWeight,
                          onAdd: addWeight,
                          onSubstract: subWeight,
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomContainer(
                        color: kCardActiveColor,
                        child: TwoButtonContent(
                          title: 'Age',
                          value: userAge,
                          onAdd: addAge,
                          onSubstract: subAge,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: kButtonColor,
                width: double.infinity,
                height: kButtonHeight,
                margin: EdgeInsets.only(
                  top: kButtonMargin,
                ),
              )
            ],
          ),
        ));
  }
}
