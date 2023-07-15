import 'package:flutter/material.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_text.dart';
import '../../../utils/screen_size.dart';

class NotificationsListModel extends StatelessWidget {
  String? actor, react, toWhom, time , unReadMessage;
  IconData? icon;
  VoidCallback? onPress;
  bool isIcon, isUnreadMessage;

  NotificationsListModel(
      {this.actor,
      this.react,
      this.time,
      this.icon,
      this.toWhom,
      this.isIcon = true,
      this.isUnreadMessage = false,
        this.onPress,
      this.unReadMessage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: FrontEndConfig.kDarkBgColor,
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25, // Set the radius of the circular avatar
                    backgroundColor: FrontEndConfig
                        .kSubscribeCardColor, // Set the background image
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: actor.toString(),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                textColor: FrontEndConfig.kCommentTitleTextColor,
                                fontFamily: 'Roboto',
                              ),
                              SizedBox(
                                width: ScreenSize().width(context, 0.03),
                              ),
                              isIcon
                                  ? CustomText(
                                      text: react.toString(),
                                      fontSize: 9,
                                      fontWeight: FontWeight.w300,
                                      textColor:
                                          FrontEndConfig.kCommentTitleTextColor,
                                      fontFamily: 'Roboto',
                                    )
                                  : Container(),
                              SizedBox(
                                width: ScreenSize().width(context, 0.012),
                              ),
                              isIcon
                                  ? CustomText(
                                      text: toWhom,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w300,
                                      textColor:
                                          FrontEndConfig.kCommentTitleTextColor,
                                      fontFamily: 'Roboto',
                                    )
                                  : Container(),
                            ],
                          ),
                          SizedBox(height: ScreenSize().height(context, 0.005)),
                          CustomText(
                            text:
                                'You: Throughout this journey, I leaned on the support of my loved ones, who reminded me...',
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            textColor: FrontEndConfig.kCommentTitleTextColor,
                            fontFamily: 'Roboto',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Column(
                      children: [
                        CustomText(
                          text: time.toString(),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          textColor: FrontEndConfig.kGrayTextColor,
                          fontFamily: 'Roboto',
                        ),
                        SizedBox(
                          height: ScreenSize().height(context, 0.01),
                        ),
                        isIcon
                            ? Icon(
                                icon,
                                color: FrontEndConfig.kGrayTextColor,
                              )
                            : (isUnreadMessage
                                ? Container(

                          height: 20,
                          width: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: FrontEndConfig.kCommentTitleTextColor,
                            borderRadius: BorderRadius.circular(30)
                          ),
                                    child:  CustomText(
                                      text: unReadMessage.toString(),
                                      fontSize: 8,
                                      fontWeight: FontWeight.w400,
                                      textColor: FrontEndConfig.kDarkBgColor,
                                      fontFamily: 'Roboto',
                                    ),
                                  )
                                : Container()),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: ScreenSize().height(context, 0.003),
              decoration:
                  BoxDecoration(color: FrontEndConfig.kReactionsIconsColor),
            ),
          ),
        ],
      ),
    );
  }
}
