import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Constants {
  // Colors
  static Color primaryColor = Color(0xFF2F3640);
  static Color secondaryColor = Color(0xFF353b48);

  static Color primaryTextColor = Color(0xFFFFFFFF);

  static Color ethBarColor = Color(0xFFEB4D4B);
  static Color usdBarColor = Color(0xFF44BD32);
  static List chartColors = [
    ethBarColor,
    usdBarColor,
  ];

  // TextStyles
  static TextStyle browserHintStyle = TextStyle(
    fontSize: 18,
    color: primaryTextColor,
  );
  static TextStyle browserTextStyle = TextStyle(
    fontSize: 18,
    color: primaryTextColor,
  );
  static TextStyle cardTextStyle = TextStyle(
    fontSize: 20,
    color: primaryTextColor,
  );
  static TextStyle cardETHStyle = TextStyle(
    fontSize: 14,
    color: primaryTextColor,
    decoration: TextDecoration.underline,
    decorationThickness: 3,
    decorationColor: ethBarColor,
  );
  static TextStyle cardUSDStyle = TextStyle(
    fontSize: 14,
    color: primaryTextColor,
    decoration: TextDecoration.underline,
    decorationThickness: 3,
    decorationColor: usdBarColor,
  );
  static TextStyle numberStyle =
      TextStyle(fontSize: 20, color: primaryTextColor);

  // Extras (Delete for master and release branch)
  static List<PieChartSectionData> chartData = [
    PieChartSectionData(
      value: 25,
      color: chartColors[0],
      showTitle: false,
    ),
    PieChartSectionData(
      value: 38,
      color: chartColors[1],
      showTitle: false,
    )
    // ChartData('David', 25, chartColors[0]),
    // ChartData('Steve', 38, chartColors[1]),
  ];
}
