import 'package:call_life/widgets/analytics_body.dart';
import 'package:flutter/material.dart';

class AnalyticsView extends StatelessWidget {
  const AnalyticsView({super.key});

  static const String id = 'AnalyticsView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AnalyticsBody());
  }
}
