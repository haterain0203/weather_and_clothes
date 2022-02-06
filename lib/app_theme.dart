import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get appTheme {
    return ThemeData(
      //TODO カラー修正
      primaryColor: const Color(0xFF38b6ff),
      //TODO 端末の設定によって切り替える
      brightness: Brightness.light,
      //TODO フォント追加
      fontFamily: "MyFont",
    );
  }
}
