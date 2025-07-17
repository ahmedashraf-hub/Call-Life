import 'package:call_life/models/analytics_card_model.dart';
import 'package:flutter/material.dart';

class AnalyticsCard extends StatelessWidget {
  final AnalyticsCardModel cardData;

  const AnalyticsCard({super.key, required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 260,
          height: 220,
          child: Card(
            color: Colors.white,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cardData.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      cardData.icon,
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    cardData.period,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    cardData.subtitle,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    cardData.status,
                    style: TextStyle(color: cardData.statusColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
