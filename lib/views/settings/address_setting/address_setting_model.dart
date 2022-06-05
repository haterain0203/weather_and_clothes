import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherandclothes/repositories/address_repository.dart';

class AddressSettingModel extends ChangeNotifier {

  final _repository = AddressRepository();
  String address = "-";
  String zipCode = "";
  bool isLoading = false;

  void startLoading() {
    isLoading = true;
    notifyListeners();
  }

  void endLoading() {
    isLoading = false;
    notifyListeners();
  }

  Future<void> init() async {
    //sharedで保存している郵便番号を取得。登録がない場合は””を取得
    await getZipCode();
    //zipCodeが既に登録済みの場合、それに応じた住所を取得する
    //TODO 郵便番号をもとにした住所取得に時間がかかるので、住所の文字列もSharedで保管してそれを読み込んだ方が良いか？
    if(zipCode != "") await getAddress(zipCode);
  }

  //郵便番号から住所を取得する処理
  Future<void> getAddress(String zipCode) async {
    this.zipCode = zipCode;
    address = await _repository.getAddress(zipCode);
  }

  //登録された郵便番号を記録する
  Future<void> setZipCode() async {
    print(zipCode.length);
    if(zipCode.length == 7) {
      await _repository.setZipCode(zipCode);
    } else {
      throw ("正しく郵便番号が入力されていません");
    }
  }

  //登録された郵便番号を読み込む
  Future<void> getZipCode() async {
    zipCode = await _repository.getZipCode();
  }
}