import 'package:flutter/widgets.dart';

class KqisCardModel {
  final String title;
  final Widget icon;
  final String count;
  final String status;
  final Color statusColor;
  final String subtitle;

  KqisCardModel({
    required this.title,
    required this.icon,
    required this.count,
    required this.status,
    required this.statusColor,
    required this.subtitle,
  });
}
