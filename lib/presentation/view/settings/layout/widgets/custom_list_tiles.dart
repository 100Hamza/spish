import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_text.dart';


class CustomListTiles extends StatelessWidget {
  String? title;
  String? subtitle;
  CustomListTiles({this.subtitle, this.title});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: CustomText(text: title.toString(), fontFamily: 'Roboto', fontSize: 15, fontWeight: FontWeight.w400, textColor: Colors.white),
      subtitle: CustomText(text: subtitle.toString(), fontFamily: 'Roboto', fontSize: 10, fontWeight: FontWeight.w400, textColor: Colors.white),
    );
  }
}
