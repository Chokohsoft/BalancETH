import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
    children: <Widget>[
      TextField(
        decoration: InputDecoration(
          fillColor: Color(0xFF353B48),
          hintText: 'Address',
          hintStyle: TextStyle(fontSize: 18, color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(48),
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
          ),
          filled: true,
          contentPadding: const EdgeInsets.fromLTRB(28, 12, 48, 12),
        ),
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
      Material(
        color: Colors.transparent,
        child: IconButton(
          icon: Image.asset('assets/icons/update_address_browser.png'),
          onPressed: () => print('suffix Icon Pressed'),
          iconSize: 48,
          padding: EdgeInsets.all(0),
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
        backgroundColor: Color(0xFF2F3640),
        elevation: 0,
      ),
      backgroundColor: Color(0xFF2F3640),
      body: SafeArea(
        child: Container(
          child: ListView(children: <Widget>[this.addressBrowser]),
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
