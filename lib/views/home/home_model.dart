import 'package:flutter/cupertino.dart';
import 'package:weatherandclothes/repositories/home_repository.dart';

class HomeModel extends ChangeNotifier {

  final repository = HomeRepository();
  String address = "";

  //郵便番号から住所を取得する処理
  Future<void> getAddress(String zipCode) async {
    address = await repository.getAddress(zipCode);
    notifyListeners();
  }
}