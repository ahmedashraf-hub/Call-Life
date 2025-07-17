import 'package:call_life/widgets/kpis_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: KpisBody());
  }
}
