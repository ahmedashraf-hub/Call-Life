import 'package:flutter/material.dart';

class TrendCardModel {
  final String title;
  final String value;
  final String subtitle;
  final String change;
  final Color changeColor;

  TrendCardModel({
    required this.title,
    required this.value,
    required this.subtitle,
    required this.change,
    required this.changeColor,
  });
}
