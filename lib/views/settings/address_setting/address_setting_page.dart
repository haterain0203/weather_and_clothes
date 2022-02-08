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
      body: FutureBuilder(
        future: addressSettingModel.init(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator(),);
          }

          if (snapshot.error != null) {
            // エラー
            return Center(child: Text('エラーがおきました'),);
          }

          return Column(
            children: [
              SizedBox(
                height: 48.0,
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
                  initialValue: addressSettingModel.zipCode,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24.0),
                  //数値のみ入力できるように制限
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                  maxLength: 7,
                  onFieldSubmitted: (zipCode) async {
                    addressSettingModel.startLoading();
                    await addressSettingModel.getAddress(zipCode);
                    addressSettingModel.endLoading();
                  },
                ),
              ),
              const FaIcon(FontAwesomeIcons.arrowCircleDown),
              SizedBox(height: 16.0,),
              Consumer<AddressSettingModel>(builder: (context, model, child) {
                return model.isLoading
                    ? Center(child: CircularProgressIndicator())
                    : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    model.address,
                    style: TextStyle(fontSize: 24.0),
                  ),
                );
              }
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '　　登録　　',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  onPrimary: Colors.white,
                  shape: const StadiumBorder(),
                ),
                onPressed: () async {
                  //TODO zipCodeが正しく入力されている場合のみ登録可能にする
                  await addressSettingModel.setZipCode();
                },
              ),
            ],
          );

        }

      ),
    );
  }
}
