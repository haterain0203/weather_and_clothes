import 'dart:convert';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddressRepository {

  final String zipCodeKey = "zipCode";

  //郵便番号から住所を取得する処理
  Future<String> getAddress(String zipCode) async {
    //引数の郵便番号をもとにAPI用のURLを生成
    String url = "https://zipcloud.ibsnet.co.jp/api/search?zipcode=$zipCode";

    //生成したURLでAPIを叩き、住所を取得
    try {
      var result = await get(Uri.parse(url));
      Map<String, dynamic> data = jsonDecode(result.body);
      final prefecture = data["results"][0]["address1"];
      final city = data["results"][0]["address2"];
      final address = prefecture + " " + city;
      return address;
    } catch(e) {
      print(e);
      return "エラー";
    }
  }

  //登録された郵便番号を記録する
  Future<void> setZipCode(String zipCode) async {
    var prefs = await SharedPreferences.getInstance();
    //sharedPreferencesへの保存処理
    await prefs.setString(zipCodeKey, zipCode);
  }


  //TODO 登録された郵便番号を読み込む
}
