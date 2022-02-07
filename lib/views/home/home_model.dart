import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class HomeModel extends ChangeNotifier {

  late String address;

  Future<void> getAddress(String zipCode) async {
    //引数の郵便番号をもとにAPI用のURLを生成
    String url = "https://zipcloud.ibsnet.co.jp/api/search?zipcode=$zipCode";

    //生成したURLでAPIを叩き、住所を取得
    try {
      var result = await get(Uri.parse(url));
      Map<String, dynamic> data = jsonDecode(result.body);
      final prefecture = data["results"][0]["address1"];
      final city = data["results"][0]["address2"];
      address = prefecture & " " & city;
      notifyListeners();
    } catch(e) {
      print(e);
    }
  }

}