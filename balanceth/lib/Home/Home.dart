import 'package:balanceth/providers/ethplorer_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:balanceth/home/chart_card.dart';
import 'package:balanceth/Constants.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  final String title;

  Home({Key key, this.title}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        backgroundColor: Constants.primaryColor,
        elevation: 0,
      ),
      backgroundColor: Constants.primaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AddressBrowser(),
                ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Balance(),
                    Holdings(),
                  ],
                ),
              ],
            ),
          ),
          top: true,
          bottom: true,
          left: false,
          right: true,
          minimum: EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}

class AddressBrowser extends StatelessWidget {
  final addressBrowserController = TextEditingController();
  AddressBrowser({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    var ethProvider = Provider.of<EthplorerProvider>(context);
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        TextField(
          controller: addressBrowserController,
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
          onPressed: () => ethProvider.getAddressInfo(addressBrowserController.text),
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


  }
}
