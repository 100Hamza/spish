import 'package:flutter/material.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_text.dart';
import '../../../utils/screen_size.dart';

class BottomSheetCommentUI extends StatelessWidget {
  String? commentTitle, commentUserName, likes, replies, repliedToName, repliedToUserName, repliedToLikesCount;
  bool isCommented;
  BottomSheetCommentUI({this.commentTitle, this.commentUserName, this.likes ,this.replies , this.repliedToName , this.repliedToUserName , this.repliedToLikesCount , this.isCommented = false});

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: FrontEndConfig.kDarkBgColor,
            borderRadius: BorderRadius.circular(5)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             CircleAvatar(
              radius: 18, // Set the radius of the circular avatar
              backgroundColor: FrontEndConfig.kSubscribeCardColor,// Set the background image
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: commentTitle.toString(),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                      fontFamily: 'Roboto',
                    ),
                    SizedBox( height: ScreenSize().height(context, 0.005)),
                    Row(
                      children: [
                        SizedBox(width: ScreenSize().width(context, 0.006),),
                        CustomText(
                          text: commentUserName.toString(),
                          fontSize: 9,
                          fontWeight: FontWeight.w300,
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                          fontFamily: 'Roboto',
                        ),
                        SizedBox(width: ScreenSize().width(context, 0.05),),
                        CustomText(
                          text: likes.toString(),
                          fontSize: 7,
                          fontWeight: FontWeight.w600,
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                          fontFamily: 'Roboto',
                        ),
                        SizedBox(width: ScreenSize().width(context, 0.015),),
                        Icon(Icons.thumb_up_off_alt_outlined , color: FrontEndConfig.kCommentTitleTextColor,size: 8,),
                        SizedBox(width: ScreenSize().width(context, 0.015),),
                        CustomText(
                          text: replies.toString(),
                          fontSize: 7,
                          fontWeight: FontWeight.w600,
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                          fontFamily: 'Roboto',
                        ),
                        SizedBox(width: ScreenSize().width(context, 0.015),),
                        Icon(Icons.reply, color: FrontEndConfig.kCommentTitleTextColor , size: 8,)
                      ],
                    ),
                    SizedBox( height: ScreenSize().height(context, 0.01)),
                    CustomText(
                      text: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed ad incidunt, nihil possimus minima aliquam sapiente nisi, suscipit sequi quae sunt laboriosam illo ab dolor. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed ad incidunt',
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                      fontFamily: 'Roboto',
                    ),

                    // Replied Comments UI is here
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: isCommented== true?  Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: FrontEndConfig.kSubscribeCardColor,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 18, // Set the radius of the circular avatar
                              backgroundColor: FrontEndConfig.kDarkBgColor, // Set the background image
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      text: repliedToName.toString(),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      textColor: FrontEndConfig.kCommentTitleTextColor,
                                      fontFamily: 'Roboto',
                                    ),
                                    SizedBox( height: ScreenSize().height(context, 0.005)),
                                    Row(
                                      children: [
                                        SizedBox(width: ScreenSize().width(context, 0.006),),
                                        CustomText(
                                          text: repliedToUserName.toString(),
                                          fontSize: 9,
                                          fontWeight: FontWeight.w300,
                                          textColor: FrontEndConfig.kCommentTitleTextColor,
                                          fontFamily: 'Roboto',
                                        ),
                                        SizedBox(width: ScreenSize().width(context, 0.3),),
                                        CustomText(
                                          text: repliedToLikesCount.toString(),
                                          fontSize: 7,
                                          fontWeight: FontWeight.w600,
                                          textColor: FrontEndConfig.kCommentTitleTextColor,
                                          fontFamily: 'Roboto',
                                        ),
                                        SizedBox(width: ScreenSize().width(context, 0.015),),
                                        Icon(Icons.thumb_up_off_alt_outlined , color: FrontEndConfig.kCommentTitleTextColor,size: 8,),

                                      ],
                                    ),
                                    SizedBox( height: ScreenSize().height(context, 0.01)),
                                    CustomText(
                                      text: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed ad incidunt, nihil possimus minima aliquam sapiente nisi, suscipit sequi quae sunt laboriosam illo ab dolor. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed ad incidunt',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      textColor: FrontEndConfig.kCommentTitleTextColor,
                                      fontFamily: 'Roboto',
                                    ),
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                      ) : null,
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
