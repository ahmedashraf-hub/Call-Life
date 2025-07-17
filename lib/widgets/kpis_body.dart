import 'package:flutter/material.dart';

class KpisBody extends StatelessWidget {
  const KpisBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Welcome you in Call Center Productivity KPIs!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ),
      ],
    );
  }
}
