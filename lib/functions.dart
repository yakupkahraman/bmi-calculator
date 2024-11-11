import 'dart:math';
import 'package:flutter/material.dart';
import 'package:task/pages/input_page.dart';

class Calculate {
  Calculate(
      {required this.height,
      required this.weight,
      required this.age,
      required this.gender});
  final int height;
  final int weight;
  final int age;
  Gender gender;
  double ageFactor = 1.0;
  double genderFactor = 1.0;

  double _bmi = 0;
  String result() {
    if (0 < age && age < 30) {
      ageFactor = 1.0;
    } else if (30 <= age && age <= 50) {
      ageFactor = 0.98;
    } else {
      ageFactor = 0.95;
    }
    if (gender == Gender.male) {
      genderFactor = 1.0;
    } else {
      genderFactor = 1.1;
    }

    _bmi = ((weight / pow(height / 100, 2)) * ageFactor * genderFactor);
    return _bmi.toStringAsFixed(1);
  }

  String getText() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getAdvise() {
    if (_bmi >= 25) {
      return 'You have a more than normal body weight.\n Try to do more Exercise';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight.\nGood job!';
    } else {
      return 'You have a lower than normal body weight.\n Try to eat more';
    }
  }

  Color getTextColor() {
    if (_bmi >= 25 || _bmi <= 18.5) {
      return Colors.deepOrangeAccent;
    } else {
      return const Color(0xFF24D876);
    }
  }
}
