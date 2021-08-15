import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final double height;
  final double weight;

  double _bmi = 0;

  String _calculateBMI() {
    _bmi = this.weight / pow(this.height / 100, 2);
  }

  String getBMI() {
    if (_bmi == 0) {
      this._calculateBMI();
    }

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi == 0) {
      this._calculateBMI();
    }

    if (_bmi >= 25) {
      return 'Overweight';
    }

    if (_bmi > 18.5) {
      return 'Normal';
    }

    return 'Underweight';
  }

  String getDesc() {
    if (_bmi == 0) {
      this._calculateBMI();
    }

    if (_bmi >= 25) {
      return 'You have a higher than normal BMI. Try to exercise more.';
    }

    if (_bmi > 18.5) {
      return 'You have a normal BMI. Good job!';
    }

    return 'You have a lower than normal BMI. You can eat a bit more.';
  }
}
