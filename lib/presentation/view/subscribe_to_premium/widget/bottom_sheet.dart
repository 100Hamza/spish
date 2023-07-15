import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:spish/navigation_helper/navigation_helper.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_text.dart';
import '../../../elements/custome_gradient_text.dart';
import '../../../models/comments_data.dart';
import '../../../utils/screen_size.dart';
import '../subscribe_to_premium_view.dart';
import 'bottom_sheet_comments_ui.dart';


Widget draggableBottomSheer() {
  return DraggableScrollableSheet(
    expand: false,
    initialChildSize: 0.5,
    minChildSize: 0.1,
    maxChildSize: 0.5,
    builder: (context, scrollController) {
      return Container(
        decoration: BoxDecoration(
          color: FrontEndConfig.kSubscribeCardColor,
          borderRadius: BorderRadius.circular(30),
          border: const GradientBoxBorder(
              gradient: LinearGradient(colors: [
                Color(0xFF4EB879),
                Color(0xFFEA3EF7),
              ]),
              width: 3),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Container(
                height: ScreenSize().width(context, 0.013),
                width: ScreenSize().width(context, 0.16),
                decoration: BoxDecoration(
                    color: FrontEndConfig.kGrayTextColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: ScreenSize().height(context, 0.03),
                      child: Row(
                        children: [
                          CustomText(
                            text: 'COMMENTS',
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            textColor: Colors.white,
                            fontFamily: 'Roboto',
                          ),
                          SizedBox(
                            width: ScreenSize().width(context, 0.03),
                          ),
                          InkWell(
                            onTap: (){
                              NavigationHelper.pushRoute(context, SubscribeToPremiumView());
                            },
                            child: CustomGradientText(
                              text: 'Subscribe now',
                              fontSize: 9,
                              fontWeight: FontWeight.w300,
                              textColor: Colors.white,
                              fontFamily: 'Roboto',
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      height: ScreenSize().height(context, 0.04),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: FrontEndConfig.kDarkBgColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'You need a premium account to be able to comment',
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFFD9D9D9)),
                          ),
                          Icon(
                            Icons.not_interested,
                            color: Colors.red,
                            size: 10,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: commentDataList.length,
                        itemBuilder: (context, index) {
                          return BottomSheetCommentUI(
                            commentTitle: commentDataList[index].commentTitle,
                            commentUserName:
                                commentDataList[index].commentUserName,
                            isCommented: commentDataList[index].isCommented,
                            likes: commentDataList[index].likes,
                            replies: commentDataList[index].replies,
                            repliedToName: commentDataList[index].repliedToName,
                            repliedToUserName:
                                commentDataList[index].repliedToUserName,
                            repliedToLikesCount:
                                commentDataList[index].repliedToLikesCount,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    },
  );
}
