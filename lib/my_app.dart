import 'package:flutter/material.dart';
import 'package:weatherandclothes/views/home/home_page.dart';
import 'app_theme.dart';

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