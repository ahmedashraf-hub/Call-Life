import 'package:flutter/widgets.dart';

class KpisCardModel {
  final String title;
  final Icon icon;
  final String count;
  final String status;
  final Color statusColor;
  final String subtitle;

  KpisCardModel({
    required this.title,
    required this.icon,
    required this.count,
    required this.status,
    required this.statusColor,
    required this.subtitle,
  });
}
