import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:weatherandclothes/views/settings/address_setting/address_setting_model.dart';

//TODO ページではなく、ダイアログ表示の方がUX的に良いか？
class AddressSettingPage extends StatelessWidget {
  const AddressSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addressSettingModel = context.read<AddressSettingModel>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("天気を表示する住所の設定"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 32.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "7桁の郵便番号を入力",
                labelStyle: TextStyle(
                  fontSize: 14.0,
//                      color: Theme.of(context).accentColor,
                ),
                border: const OutlineInputBorder(),
              ),
              //TODO sharedで保存した値を表示する
//                initialValue: "",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24.0),
              //数値のみ入力できるように制限
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              maxLines: 1,
              maxLength: 7,
              onChanged: (zipCode) {
                addressSettingModel.getAddress(zipCode);
              },
            ),
          ),
          const FaIcon(FontAwesomeIcons.chevronCircleDown),
          Consumer<AddressSettingModel>(builder: (context, model, child) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                model.address,
                style: TextStyle(fontSize: 24.0),
              ),
            );
          }
          ),
        ],
      ),
    );
  }
}