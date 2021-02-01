import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

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
      child: Material(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Title
            Row(),
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
      child: Column(
        children: [
          // Title
          Row(
            children: [
              Text(
                "Token holdings",
                style: Constants.cardTitleStyle,
              )
            ],
          ),
          // Chart
          Row(),
        ],
      ),
    );
  }
}
