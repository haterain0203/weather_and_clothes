import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingListTile extends StatelessWidget {
  const SettingListTile(
      {Key? key, required this.color,
      required this.iconData,
      required this.title,
      this.trailing,
      this.onTap}) : super(key: key);

  final Color color;
  final IconData iconData;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: FaIcon(
                iconData,
                color: Colors.white,
              ),
            ),
          ),
        ),
        title: Text(title),
        // 呼び出し元でtrailingを設定しない場合、「arrow_forward_ios」を表示
        trailing: trailing ?? const Icon(Icons.arrow_forward_ios),
        onTap: onTap
    );
  }
}
