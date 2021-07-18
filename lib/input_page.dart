import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './constant.dart';
import './custom_container.dart';
import './container_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  void setGender(Gender gender) {
    setState(() {
      selectedGender = gender;
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
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: CustomContainer(
                      color: kCardActiveColor,
                    )),
                    Expanded(
                        child: CustomContainer(
                      color: kCardActiveColor,
                    ))
                  ],
                ),
              ),
              Container(
                color: kButtonColor,
                width: double.infinity,
                height: kButtonHeight,
                margin: EdgeInsets.only(top: kButtonMargin),
              )
            ],
          ),
        ));
  }
}
