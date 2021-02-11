class AddressInfo {
  String address;
  Eth eTH;
  List<Tokens> tokens;

  AddressInfo({this.address, this.eTH, this.tokens});

  AddressInfo.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    eTH = json['ETH'] != null ? new Eth.fromJson(json['ETH']) : null;
    if (json['tokens'] != null) {
      tokens = new List<Tokens>();
      json['tokens'].forEach((v) {
        tokens.add(new Tokens.fromJson(v));
      });
    }
  }
}

class Eth {
  double balance;

  Eth({this.balance});

  Eth.fromJson(Map<String, dynamic> json) {
    balance = json['balance'];
  }
}

class Tokens {
  TokenInfo tokenInfo;
  int balance;

  Tokens({this.tokenInfo, this.balance});

  Tokens.fromJson(Map<String, dynamic> json) {
    tokenInfo = json['tokenInfo'] != null
        ? new TokenInfo.fromJson(json['tokenInfo'])
        : null;
    balance = json['balance'];
  }
}

class TokenInfo {
  String address;
  String name;
  int decimals;
  String symbol;
  String image;

  TokenInfo({this.address, this.name, this.decimals, this.symbol, this.image});

  TokenInfo.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    name = json['name'];
    decimals = json['decimals'];
    symbol = json['symbol'];
  }
}
