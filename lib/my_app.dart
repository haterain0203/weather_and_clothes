import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeatherAndClothes',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const HomePage()
    );
  }
}