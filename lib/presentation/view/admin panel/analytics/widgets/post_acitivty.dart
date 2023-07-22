import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_button.dart';
import 'package:spish/presentation/view/feeds/widgets/gradient_icon.dart';

import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_text.dart';

class PostActivity extends StatelessWidget {
  String? profilePic , name, userName , datePosted , numberOfViews;
  IconData? memberIcon;
  bool isTill;
  PostActivity({this.profilePic , this.name , this.userName,  this.memberIcon , this.datePosted , this.numberOfViews , this.isTill = false});

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
            text: datePosted,
            fontSize: 8,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto',
            textColor: FrontEndConfig.kCommentTitleTextColor,
          ),
          Row(
            children: [
              isTill? Container(): Icon(Icons.remove_red_eye),
              CustomText(
                text: numberOfViews,
                fontSize: 8,
                fontWeight: FontWeight.w600,
                fontFamily: 'Roboto',
                textColor: FrontEndConfig.kCommentTitleTextColor,
              ),
            ],
          ),
          GradientIcon(icon: Icons.workspace_premium),
        ],
      ),
    );
  }
}
