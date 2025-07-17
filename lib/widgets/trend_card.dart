import 'package:call_life/models/trend_card_model.dart';
import 'package:flutter/material.dart';

class TrendCard extends StatelessWidget {
  final TrendCardModel trendData;

  const TrendCard({super.key, required this.trendData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FBFC),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(trendData.title), Text(trendData.value)],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(trendData.subtitle),
              Text(
                trendData.change,
                style: TextStyle(color: trendData.changeColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
