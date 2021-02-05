import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';

class Balance extends StatefulWidget {
  final String title;

  Balance({Key key, this.title}) : super(key: key);

  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  Widget build(BuildContext context) {
    return Card(
      color: Constants.secondaryColor,
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title row
            Row(
              children: [
                Text(
                  'Account Balance',
                  style: Constants.cardTextStyle,
                ),
                Spacer(
                  flex: 8,
                ),
                Text(
                  'ETH',
                  style: Constants.cardETHStyle,
                ),
                Spacer(),
                Text(
                  'USD',
                  style: Constants.cardUSDStyle,
                ),
              ],
            ),
            // Total balance rows (2 rows)
            IntrinsicHeight(
              child: Row(
                children: [
                  VerticalDivider(
                    color: Constants.chartColors[0],
                    thickness: 2,
                  ),
                  Text(
                    '0.73',
                    style: Constants.numberStyle,
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  VerticalDivider(
                    color: Constants.chartColors[1],
                    thickness: 2,
                  ),
                  Text(
                    '\$ 1024.00',
                    style: Constants.numberStyle,
                  ),
                ],
              ),
            ),
            // Chart
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 192,
                  child: PieChart(
                    PieChartData(
                      startDegreeOffset: -90,
                      sections: Constants.chartData,
                      centerSpaceRadius: double.infinity,
                      borderData: FlBorderData(show: false),
                    ),
                  ),
                ),
              ],
            ),
            // ETH and Token data text
            Row(
              children: [
                // ETH column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'ETH',
                      style: Constants.cardTextStyle,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          VerticalDivider(
                            color: Constants.chartColors[0],
                            thickness: 2,
                          ),
                          Text(
                            '0.73',
                            style: Constants.numberStyle,
                          ),
                        ],
                      ),
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          VerticalDivider(
                            color: Constants.chartColors[1],
                            thickness: 2,
                          ),
                          Text(
                            '\$ 1024.00',
                            style: Constants.numberStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                // Token column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Token',
                      style: Constants.cardTextStyle,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          VerticalDivider(
                            color: Constants.chartColors[0],
                            thickness: 2,
                          ),
                          Text(
                            '0.73',
                            style: Constants.numberStyle,
                          ),
                        ],
                      ),
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          VerticalDivider(
                            color: Constants.chartColors[1],
                            thickness: 2,
                          ),
                          Text(
                            '\$ 1024.00',
                            style: Constants.numberStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Holdings extends StatefulWidget {
  final String title;

  Holdings({Key key, this.title}) : super(key: key);

  @override
  _HoldingsState createState() => _HoldingsState();
}

class _HoldingsState extends State<Holdings> {
  Widget build(BuildContext context) {
    return Card(
      color: Constants.secondaryColor,
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Row(
              children: [
                Text(
                  "Token holdings",
                  style: Constants.cardTextStyle,
                ),
                Spacer(
                  flex: 8,
                ),
                Text(
                  "ETH",
                  style: Constants.cardETHStyle,
                ),
                Spacer(),
                Text(
                  "USD",
                  style: Constants.cardUSDStyle,
                ),
              ],
            ),
            // Chart
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 192,
                  child: PieChart(
                    PieChartData(
                      startDegreeOffset: -90,
                      sections: Constants.chartData,
                      centerSpaceRadius: double.infinity,
                      borderData: FlBorderData(show: false),
                    ),
                  ),
                ),
              ],
            ),
            //
          ],
        ),
      ),
    );
  }
}
