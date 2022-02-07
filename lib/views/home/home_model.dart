import 'package:flutter/cupertino.dart';

class HomeModel extends ChangeNotifier {

  Future<String> getAddress(String zipCode) {
    String url = "https://zipcloud.ibsnet.co.jp/api/search?zipcode=$zipCode";

    try {

    } catch(e) {
      print(e);
    }
  }

}