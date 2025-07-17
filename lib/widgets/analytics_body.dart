import 'package:flutter/material.dart';

class AnalyticsBody extends StatelessWidget {
  const AnalyticsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Welcome you in Call Center Analytics!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ),
      ],
    );
  }
}
