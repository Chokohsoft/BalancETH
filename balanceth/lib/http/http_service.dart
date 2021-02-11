import 'dart:convert';

import 'package:balanceth/classes/address_info.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpService {
  final String apiUrl = 'api.ethplorer.io';
  final String imagesUrl = 'ethplorer.io';

  Future<Map> getAddressInfo(String address) async {
    final response = await http.get(
        Uri.https(apiUrl, 'getAddressInfo/$address', {'apiKey': 'freekey'}));
    // print('getAddressInfo statusCode = ${response.statusCode}');
    // print('Uri >> ${Uri.https(apiUrl, 'getAddressInfo/$address', {'apiKey': 'freekey'})}');
    if (response.statusCode == 200) {
      Map<String, dynamic> addressInfo = jsonDecode(response.body);
      return addressInfo;
      // return AddressInfo.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load address info');
    }
  }
}
