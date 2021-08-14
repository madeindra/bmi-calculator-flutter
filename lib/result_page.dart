import 'package:flutter/material.dart';

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
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Center(
        child: Text('Hello There'),
      ),
    );
  }
}
