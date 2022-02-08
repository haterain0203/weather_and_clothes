import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:weatherandclothes/views/settings/address_setting_page.dart';
import 'package:weatherandclothes/views/settings/settings_model.dart';
import '../../components/setting_list_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade500,
              child: const ListTile(
                title: Text(
                  "設定",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            SettingListTile(
              color: Colors.lightGreen.shade400,
              iconData: Icons.location_on,
              title: "住所設定",
              onTap: () {
                //TODO 住所設定処理
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddressSettingPage()));
              },
            ),
            const Divider(),
            SettingListTile(
              color: Colors.orange.shade400,
              iconData: FontAwesomeIcons.bell,
              title: "アラーム",
              onTap: () {
                //TODO アラーム設定処理
              },
            ),
            const SizedBox(height: 16.0,),

            Container(
              color: Colors.grey.shade500,
              child: const ListTile(
                title: Text(
                  "このアプリについて",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0),
                ),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            SettingListTile(
              color: Colors.blue.shade400,
              iconData: FontAwesomeIcons.mailBulk,
              title: "お問い合わせ",
              onTap: () async {
                //TODO GoogleFormへ遷移
              },
            ),
            const Divider(),
            SettingListTile(
              color: Colors.red.shade400,
              iconData: FontAwesomeIcons.pen,
              title: "ストアでレビュー",
              onTap: () {
                //TODO ストアレビュー処理
//              LaunchReview.launch(
//                  androidAppId: "com.stroll_app.stroll_app",
//                  iOSAppId: "1596553008");
              },
            ),
            const Divider(),
            SettingListTile(
              color: Colors.pink.shade300,
              iconData: FontAwesomeIcons.shareAlt,
              title: "アプリをシェア",
              onTap: () {
                //TODO アプリシェア機能
              }
            ),
            const Divider(),
            SettingListTile(
              color: Colors.grey,
              iconData: FontAwesomeIcons.info,
              title: "アプリ名",
              trailing: Consumer<SettingsModel>(
                builder: (context, model, child) {
                  return const Text(
                    //TODO アプリ名の取得と表示
                    "アプリ名が入ります",
//                  model.appName,
                    style: TextStyle(fontSize: 16.0),
                  );
                },
              ),
            ),
            const Divider(),
            SettingListTile(
              color: Colors.grey,
              iconData: FontAwesomeIcons.info,
              title: "バージョン",
              trailing: Consumer<SettingsModel>(
                builder: (context, model, child) {
                  return const Text(
                  //TODO アプリバージョンの取得と表示
                  "アプリバージョンが入ります",
//                  model.version,
                    style: TextStyle(fontSize: 16.0),
                  );
                },
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
