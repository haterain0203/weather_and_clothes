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

            const SizedBox(height: 30.0,),

            //DateArea
            //TODO 本日の日付を取得して表示
            //TODO レイアウト的に数字のみフォントを大きくする予定
            const Text("2月3日（木）", style: TextStyle(fontSize: 28.0),),

            //WeatherArea
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //TODO 天気に合わせて画像を変更する
                SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: Image.asset("assets/images/sun.png"),
                ),
                const SizedBox(width: 30.0,),
                //TODO 取得した気温を表示する
                //TODO レイアウト的に数字のみフォントを大きくする予定
                const Text("10℃", style: TextStyle(fontSize: 28.0),)
              ],
            ),

            //TODO ClothesArea

            //TODO ForecastArea

            //TODO AdArea
          ],
        ),
      ),
    );
  }
}
