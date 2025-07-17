import 'package:call_life/views/analytics_view.dart';
import 'package:call_life/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CallLife());
}

class CallLife extends StatelessWidget {
  const CallLife({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0XFFF4F6FE)),
      routes: {
        HomeView.id: (context) => HomeView(),
        AnalyticsView.id: (context) => AnalyticsView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
