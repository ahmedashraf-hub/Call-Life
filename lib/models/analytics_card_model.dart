import 'package:flutter/material.dart';

class AnalyticsCardModel {
  final String title;
  final String period;
  final Icon icon;
  final String subtitle;
  final String status;
  final Color statusColor;

  AnalyticsCardModel({
    required this.title,
    required this.period,
    required this.icon,
    required this.subtitle,
    required this.status,
    required this.statusColor,
  });
}
