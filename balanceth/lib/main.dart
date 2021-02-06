import 'package:balanceth/Home/Home.dart';
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
          // Define the default font family.
          fontFamily: 'SegoeUI',
        ),
        home: Home(title: _title),
      ),
    );
  }
}
