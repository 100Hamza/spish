import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_text.dart';
import 'package:spish/ui_config/front_end_config.dart';



class ChatSettingListTiles extends StatelessWidget {

  String? title;
  String? subtitle;
  IconData? icon;
  Widget? widget;
  ChatSettingListTiles({this.subtitle, this.title, this.icon , this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0 , left: 10, right: 10, bottom: 5),
      child: Container(
        decoration: BoxDecoration(
            color: FrontEndConfig.kDarkBgColor,
            borderRadius: BorderRadius.circular(10)
        ),

        child: ListTile(
          leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: FrontEndConfig.kGrayTextColor,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Icon(icon , size: 35, color: FrontEndConfig.kDarkBgColor,)),
          title: CustomText(text: title.toString(), fontFamily: 'Roboto', fontSize: 12, fontWeight: FontWeight.w400, textColor: Colors.white),
          subtitle: CustomText(text: subtitle.toString(), fontFamily: 'Roboto', fontSize: 10, fontWeight: FontWeight.w400, textColor: Colors.white),
          trailing: widget,
        ),
      ),
    );
  }
}
