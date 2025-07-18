import 'package:call_life/models/analytics_card_model.dart';
import 'package:call_life/models/trend_card_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<AnalyticsCardModel> analyticsCardData = [
  AnalyticsCardModel(
    title: 'Peak Usage Period',
    period: '2PM - 4PM',
    icon: const FaIcon(FontAwesomeIcons.clock),
    subtitle: 'Highest activity across all tenants',
    status: '+23% from last week',
    statusColor: Colors.green,
  ),
  AnalyticsCardModel(
    title: 'User Engagement',
    period: '8AM - 10AM',
    icon: const FaIcon(FontAwesomeIcons.users),
    subtitle: 'Most active user sessions',
    status: '-15% from last week',
    statusColor: Colors.red,
  ),
  AnalyticsCardModel(
    title: 'Server Load',
    period: '6PM - 8PM',
    icon: const FaIcon(FontAwesomeIcons.server),
    subtitle: 'Peak server resource usage',
    status: '+10% from last week',
    statusColor: Colors.green,
  ),
  AnalyticsCardModel(
    title: 'App Downloads',
    period: '12PM - 2PM',
    icon: const FaIcon(FontAwesomeIcons.arrowDown),
    subtitle: 'Highest download activity',
    status: 'No change',
    statusColor: Colors.grey,
  ),
];

List<TrendCardModel> trendCardData = [
  TrendCardModel(
    title: 'Overall Call Resolution',
    value: '87.3%',
    subtitle: 'Platform Average',
    change: '+4.1%',
    changeColor: Colors.green,
  ),
  TrendCardModel(
    title: 'Customer Satisfaction',
    value: '92.5%',
    subtitle: 'Platform Average',
    change: '+2.3%',
    changeColor: Colors.green,
  ),
  TrendCardModel(
    title: 'Average Response Time',
    value: '3.2s',
    subtitle: 'Platform Average',
    change: '-0.5s',
    changeColor: Colors.red,
  ),
];

final Map<String, double> usageDistribution = {
  'Government Services': 45,
  'Healthcare': 28,
  'Retail': 18,
  'Technology': 9,
};
