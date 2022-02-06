import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [

            // MenuArea
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.settings, size: 24.0,),
                  onPressed: () {
                    //TODO 押下処理の追加
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.share, size: 24.0,),
                  onPressed: () {
                    //TODO 押下処理の追加
                  },
                ),
                const SizedBox(width: 8.0,),
              ],
            ),

            //AddressArea
            //TODO 設定画面で入力された郵便番号と住所を取得して表示
            const Text("〒000-0000 東京都葛飾区", style: TextStyle(fontSize: 20.0),),

            const SizedBox(height: 20.0,),

            //DateArea
            //TODO 本日の日付を取得して表示
            //TODO レイアウト的に数字のみフォントを大きくする予定
            const Text("2月3日（木）", style: TextStyle(fontSize: 24.0),),

            //WeatherArea
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //TODO 天気に合わせて画像を変更する
                SizedBox(
                  width: 70.0,
                  height: 70.0,
                  child: Image.asset("assets/images/sun.png"),
                ),
                const SizedBox(width: 20.0,),
                //TODO 取得した気温を表示する
                //TODO レイアウト的に数字のみフォントを大きくする予定
                const Text("10℃", style: TextStyle(fontSize: 24.0),)
              ],
            ),

            const SizedBox(height: 30.0,),

            //ClothesArea
            //TODO 取得したデータに合わせて画像を切り替え
            //TODO 朝・昼・夜に分けるか検討
            //TODO CarouselSliderで実装してみたがイマイチ。そもそも仮に朝昼夜を表示するのであれば回転させる必要がない。
            Expanded(child: Image.asset("assets/images/t_shirt.png")),

            const SizedBox(height: 30.0,),

            //TODO ForecastArea
            Container(
              height: 100.0,
              width: size.width,
              color: Colors.blue,
              child: const Center(child: Text("週間予報が入ります"),),
            ),

            const SizedBox(height: 30.0,),

            //TODO AdArea
            Container(
              height: 75.0,
              width: size.width,
              color: Colors.blue,
              child: const Center(child: Text("バナー広告が入ります"),),
            ),

          ],
        ),
      ),
    );
  }
}
