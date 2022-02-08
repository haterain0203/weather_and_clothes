import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//TODO ページではなく、ダイアログ表示の方がUX的に良いか？
class AddressSettingPage extends StatelessWidget {
  const AddressSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              onChanged: (minDistance) {
//                    model.minDistance = minDistance;
              },
            ),
          ),
        ],
      ),
    );
  }
}
