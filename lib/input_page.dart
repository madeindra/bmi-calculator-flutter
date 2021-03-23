import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './custom_container.dart';
import './container_content.dart';

final Color cardColor = Color(0xFF1D1E33);
final Color textColor = Color(0xFF8D8E98);
final Color buttonColor = Color(0xFFEB1555);
final double buttonHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                            color: cardColor,
                            child: ContainerContent(
                              color: textColor,
                              icon: FontAwesomeIcons.mars,
                              text: 'Male',
                            ))),
                    Expanded(
                        child: CustomContainer(
                      color: cardColor,
                      child: ContainerContent(
                        color: textColor,
                        icon: FontAwesomeIcons.venus,
                        text: 'Female',
                      ),
                    ))
                  ],
                ),
              ),
              Expanded(
                child: CustomContainer(
                  color: cardColor,
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: CustomContainer(
                      color: cardColor,
                    )),
                    Expanded(
                        child: CustomContainer(
                      color: cardColor,
                    ))
                  ],
                ),
              ),
              Container(
                color: buttonColor,
                width: double.infinity,
                height: buttonHeight,
                margin: EdgeInsets.only(top: 10.0),
              )
            ],
          ),
        ));
  }
}
