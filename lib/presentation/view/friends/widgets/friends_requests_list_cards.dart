import 'package:flutter/material.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_button.dart';
import '../../../elements/custom_text.dart';
import '../../../utils/screen_size.dart';

class RequestsListCard extends StatelessWidget {
  bool isSecondButton, isGradient;
  String? requestSenderName, skills, userName, firstButtonTitle;
  MainAxisAlignment mainAxisAlignment;
  double width;
  Color fontColor;
  Color? bgColor;

  RequestsListCard({
    this.isSecondButton = true,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.requestSenderName,
    this.skills,
    this.userName,
    this.firstButtonTitle,
    this.width = .14,
    this.isGradient = true,
    this.fontColor = Colors.white,
    this.bgColor
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: FrontEndConfig.kSubscribeCardColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25, // Set the radius of the circular avatar
                  backgroundColor:
                      FrontEndConfig.kGrayTextColor, // Set the background image
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
                              text: requestSenderName.toString(),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              textColor: FrontEndConfig.kCommentTitleTextColor,
                              fontFamily: 'Roboto',
                            ),
                            SizedBox(
                              width: ScreenSize().width(context, 0.03),
                            ),
                            CustomText(
                              text: userName.toString(),
                              fontSize: 9,
                              fontWeight: FontWeight.w300,
                              textColor: FrontEndConfig.kGrayTextColor,
                              fontFamily: 'Roboto',
                            ),
                            SizedBox(
                              width: ScreenSize().width(context, 0.012),
                            ),
                          ],
                        ),
                        SizedBox(height: ScreenSize().height(context, 0.005)),
                        CustomText(
                          text: skills.toString(),
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                          fontFamily: 'Roboto',
                        ),
                        SizedBox(height: ScreenSize().height(context, 0.009)),
                        Row(
                          mainAxisAlignment: mainAxisAlignment,
                          children: [
                            CustomButton(
                                onPress: () {},
                                width: width,
                                height: 20,
                                isGradient: isGradient,
                                isIcon: false,
                                text: firstButtonTitle.toString(),
                                radius: 50,
                                fontColor: fontColor,
                                fontSize: 9,
                                containerColor: bgColor!),
                            SizedBox(
                              width: ScreenSize().width(context, 0.02),
                            ),
                            isSecondButton
                                ? CustomButton(
                                    onPress: () {},
                                    width: .14,
                                    height: 20,
                                    isGradient: false,
                                    isIcon: false,
                                    text: 'Reject',
                                    fontSize: 9,
                                    radius: 50,
                                    fontColor: Colors.white,
                                    containerColor: FrontEndConfig.kRedColor)
                                : Container(),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            height: ScreenSize().height(context, 0.003),
            decoration: BoxDecoration(color: FrontEndConfig.kLightWhite),
          ),
        ),
      ],
    );
  }
}
