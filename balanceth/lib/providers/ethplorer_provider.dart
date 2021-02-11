import 'dart:convert';

import 'package:balanceth/http/http_service.dart';
import 'package:flutter/foundation.dart';

class EthplorerProvider with ChangeNotifier {
  HttpService service = HttpService();
  String totalETH;
  String totalUSD;
  String ethBalanceETH;
  String ethBalanceUSD;
  String tokenBalanceETH;
  String tokenBalanceUSD;
  List tokenListBalance;

  void getAddressInfo(String address) async{
    print('EthplorerProvider.getAddressInfo');
    print('Address: $address');
    var response = await service.getAddressInfo(address);
    print(json.encode(response));
    notifyListeners();
  }
}