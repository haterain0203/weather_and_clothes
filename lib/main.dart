import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:weatherandclothes/views/home/home_model.dart';
import 'package:weatherandclothes/views/settings/address_setting/address_setting_model.dart';
import 'package:weatherandclothes/views/settings/settings_model.dart';
import 'my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeModel()),
        ChangeNotifierProvider(create: (_) => SettingsModel()),
        ChangeNotifierProvider(create: (_) => AddressSettingModel()..init()),
      ],
      child: const MyApp(),
    ),
  );
}
