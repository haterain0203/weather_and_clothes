import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            // MenuArea
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  //TODO 押下処理の追加
                  child: Icon(Icons.settings),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  //TODO 押下処理の追加
                  child: Icon(Icons.share),
                ),
              ],
            ),

            //AddressArea
            //TODO 設定画面で入力された郵便番号を取得して表示
            const Text("〒000-0000", style: TextStyle(fontSize: 22.0),),
            //TODO 設定画面で入力された住所を取得して表示
            const Text("東京都葛飾区", style: TextStyle(fontSize: 22.0),),

            //TODO DateArea

            //TODO WeatherArea

            //TODO ClothesArea

            //TODO ForecastArea

            //TODO AdArea
          ],
        ),
      ),
    );
  }
}
