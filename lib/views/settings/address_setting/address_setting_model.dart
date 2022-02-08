import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherandclothes/repositories/address_repository.dart';

class AddressSettingModel extends ChangeNotifier {

  final _repository = AddressRepository();
  String address = "";
  String? zipCode;

  //郵便番号から住所を取得する処理
  Future<void> getAddress(String zipCode) async {
    this.zipCode = zipCode;
    address = await _repository.getAddress(zipCode);
    notifyListeners();
  }

  //登録された郵便番号を記録する
  Future<void> setZipCode() async {
    if(zipCode != null) {
      await _repository.setZipCode(zipCode!);
    } else {
      throw ("郵便番号が入力されていません");
    }
  }

  //登録された郵便番号を読み込む
  Future<void> getZipCode() async {
    zipCode = await _repository.getZipCode();
  }
}