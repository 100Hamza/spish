import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_button.dart';

import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_text.dart';

class UserManagmentModel extends StatelessWidget {
  String? profilePic , name, userName, member , password;
  UserManagmentModel({this.profilePic , this.name , this.userName,  this.member , this.password});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: FrontEndConfig.kCommentTitleTextColor,
          ),
          CustomText(
            text: name,
            fontSize: 8,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
            textColor: FrontEndConfig.kCommentTitleTextColor,
          ),
          CustomText(
            text: userName,
            fontSize: 8,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
            textColor: FrontEndConfig.kCommentTitleTextColor,
          ),
          CustomText(
            text: member,
            fontSize: 8,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
            textColor: FrontEndConfig.kCommentTitleTextColor,
          ),
          CustomText(
            text: '********',
            fontSize: 8,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
            textColor: FrontEndConfig.kCommentTitleTextColor,
          ),
          CustomButton(
            fontSize: 8,
            text: 'track_this_id'.tr(),
            isIcon: false,
            onPress: (){},
            width: 0.15,
            isGradient: false,
            height: 20,
            radius: 5,
          ),
        ],
      ),
    );
  }
}
