import 'package:call_life/views/analytics_view.dart';
import 'package:call_life/views/home_view.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;

    return Row(
      children: [
        _buildNavButton(
          context,
          title: 'Call Center Productivity KPIs',
          route: HomeView.id,
          isActive: currentRoute == HomeView.id,
        ),
        _buildNavButton(
          context,
          title: 'Call Center Analytics',
          route: AnalyticsView.id,
          isActive: currentRoute == AnalyticsView.id,
        ),
      ],
    );
  }

  Widget _buildNavButton(
    BuildContext context, {
    required String title,
    required String route,
    required bool isActive,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (!isActive) {
            Navigator.pushNamed(context, route);
          }
        },
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? Colors.white : const Color(0xFFF1F4FD),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[300]!.withAlpha(77),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(3, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: isActive ? Colors.black : Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
