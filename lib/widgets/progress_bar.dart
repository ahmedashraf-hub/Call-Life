import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final String label;
  final double percentage;

  const ProgressBar({
    super.key,
    required this.title,
    required this.subtitle,
    required this.label,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    label,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '${percentage.toStringAsFixed(0)}%',
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),

            // const SizedBox(height: 10),
            LinearProgressIndicator(
              borderRadius: BorderRadius.circular(8),
              value: percentage.clamp(0.0, 100.0) / 100,
              backgroundColor: Colors.blue,
              color: Colors.green[900],
              minHeight: 8,
            ),
          ],
        ),
      ),
    );
  }
}
