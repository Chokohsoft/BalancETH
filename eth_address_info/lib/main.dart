import 'package:eth_address_info/Home/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  static const String _title = 'Ethereum wallet';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus.unfocus();
        }
      },
      child: MaterialApp(
        title: _title,
        theme: ThemeData(
          // Define the default brightness and colors.
          // brightness: Brightness.dark,
          // primaryColor: Color(0xFF2F3640),
          // accentColor: Colors.cyan[600],

          // Define the default font family.
          fontFamily: 'SegoeUI',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 28),
            // headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            // bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
        home: Home(title: _title),
      ),
    );
  }
}
