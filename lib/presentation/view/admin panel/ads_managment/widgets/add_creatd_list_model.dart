import 'package:flutter/material.dart';

import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_text.dart';

class AdCreatedModel extends StatelessWidget {
  String? logo , name, addName, date;
  AdCreatedModel({this.logo , this.name , this.addName,  this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: FrontEndConfig.kDarkBgColor,
          ),
          CustomText(
            text: name,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
            textColor: FrontEndConfig.kCommentTitleTextColor,
          ),
          CustomText(
            text: addName,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
            textColor: FrontEndConfig.kCommentTitleTextColor,
          ),
          CustomText(
            text: date,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
            textColor: FrontEndConfig.kCommentTitleTextColor,
          ),
        ],
      ),
    );
  }
}
