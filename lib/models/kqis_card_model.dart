import 'package:flutter/material.dart';

class KqisCardModel {
  final String title;
  final Widget icon;
  final String period;
  final String status;
  final String subtitle;
  final Color statusColor;

  KqisCardModel({
    required this.title,
    required this.icon,
    required this.period,
    required this.status,
    required this.subtitle,
    required this.statusColor,
  });
}
