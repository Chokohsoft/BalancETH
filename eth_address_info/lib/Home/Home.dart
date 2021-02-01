import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'ChartCard.dart';
import '../Constants.dart';

/// This is the stateful widget that the main application instantiates.
class Home extends StatefulWidget {
  final String title;

  Home({Key key, this.title}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

/// This is the private State class that goes with HomeState.
class _HomeState extends State<Home> {
  Widget addressBrowser = Stack(
    alignment: Alignment.centerRight,
    children: [
      TextField(
        decoration: InputDecoration(
          fillColor: Constants.secondaryColor,
          hintText: 'Address',
          hintStyle: Constants.browserHintStyle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(48),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(28, 12, 48, 12),
        ),
        style: Constants.browserTextStyle,
      ),
      MaterialButton(
        color: Color(0xFF01A3A4),
        shape: CircleBorder(),
        onPressed: () {},
        height: 48,
        minWidth: 48,
        padding: EdgeInsets.all(0),
        child: RotatedBox(
          quarterTurns: 1,
          child: Icon(
            Icons.sync,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Constants.primaryColor,
        elevation: 0,
      ),
      backgroundColor: Constants.primaryColor,
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              this.addressBrowser,
              Holdings(),
            ],
          ),
        ),
        top: true,
        bottom: true,
        left: false,
        right: true,
        minimum: EdgeInsets.all(8.0),
      ),
    );
  }
}
