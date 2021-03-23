import 'package:flutter/material.dart';
import 'custom_container.dart';

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
                      color: Color(0xFF1D1E33),
                    )),
                    Expanded(
                        child: CustomContainer(
                      color: Color(0xFF1D1E33),
                    ))
                  ],
                ),
              ),
              Expanded(
                child: CustomContainer(
                  color: Color(0xFF1D1E33),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: CustomContainer(
                      color: Color(0xFF1D1E33),
                    )),
                    Expanded(
                        child: CustomContainer(
                      color: Color(0xFF1D1E33),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
