import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
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
              color: Colors.orange.shade400,
              iconData: FontAwesomeIcons.bell,
              title: "通知",
              onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) =>
//                          LocalNotificationPage()));
              },
            ),
            const Divider(),
            SettingListTile(
              color: Colors.lightGreen.shade400,
              iconData: Icons.straighten,
              title: "距離の設定",
              onTap: () {
//              Navigator.push(
//                  context,
//                  MaterialPageRoute(
//                      builder: (context) =>
//                      const SettingDistancePage()));
              },
            ),
            const SizedBox(
              height: 16.0,
            ),
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
              iconData: FontAwesomeIcons.twitter,
              title: "TwitterDMで問い合わせ",
              onTap: () async {
//              await model.launchTwitterDM();
              },
            ),
            const Divider(),
            SettingListTile(
              color: Colors.red.shade400,
              iconData: FontAwesomeIcons.pen,
              title: "ストアでレビューを書く",
              onTap: () {
//              LaunchReview.launch(
//                  androidAppId: "com.stroll_app.stroll_app",
//                  iOSAppId: "1596553008");
              },
            ),
            const Divider(),
            SettingListTile(
              color: Colors.grey,
              iconData: FontAwesomeIcons.info,
              title: "アプリ名",
              trailing: Consumer<SettingsModel>(
                builder: (context, model, child) {
                  return const Text(
                    //TODO
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
                    //TODO
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
