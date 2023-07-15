import 'package:flutter/material.dart';


import '../../ui_config/front_end_config.dart';
import '../view/feeds/widgets/search_textfield.dart';
import 'custom_text.dart';
import '../utils/screen_size.dart';

class NewsFeedSearch extends StatelessWidget {
  String? title;
  bool isIcon;
  IconData? icon;
  VoidCallback? onPress;
  NewsFeedSearch({this.title, this.isIcon = false, this.icon , this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(5),
        height: ScreenSize().height(context, 0.08),
        width: double.infinity,
        decoration: BoxDecoration(
            color: FrontEndConfig.kSubscribeCardColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 8.0 , right: 4.0),
              child: isIcon? InkWell(onTap: onPress , child: Icon(icon , color: FrontEndConfig.kGrayTextColor,)) :CustomText(
                text: title.toString(),
                fontSize: 15,
                fontWeight: FontWeight.w700,
                textColor: Colors.white,
                fontFamily: 'Roboto',
              ),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 4.0, bottom: 8.0 , right: 8),
              child: SearchTextField(filledColor: FrontEndConfig.kDarkBgColor ),
            ))
          ],
        ),
      ),
    );
  }
}
