import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
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
            )

            //TODO AddressArea

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
