import 'package:flutter/material.dart';
import 'package:call_life/widgets/analytics_card_data.dart';
import 'package:call_life/widgets/custom_app_bar.dart';
import 'package:call_life/widgets/progress_bar.dart';
import 'package:call_life/widgets/trend_card.dart';

class AnalyticsBody extends StatelessWidget {
  const AnalyticsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(), // Assuming CustomAppBar is error-free
            Container(
              height: 300, // Fixed height for GridView to avoid layout issues
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width > 800
                      ? 4
                      : 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.4,
                ),
                itemCount: analyticsCardData.length,
                itemBuilder: (context, index) {
                  final card = analyticsCardData[index];
                  return Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          card.icon,
                          const SizedBox(height: 8),
                          Text(
                            card.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            card.subtitle,
                            style: const TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            card.status,
                            style: TextStyle(
                              color: card.statusColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            // Original Row with TrendCard and ProgressBar unchanged
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Card(
                      color: Colors.white,
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Platform-wide Trends',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Performance trends across all tenants',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 16),
                            ...trendCardData.map(
                              (trend) => TrendCard(trendData: trend),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: usageDistribution.entries
                        .map(
                          (entry) => ProgressBar(
                            label: entry.key,
                            percentage: entry.value,
                            title: '',
                            subtitle: '',
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
