import 'package:flutter/material.dart';
import 'package:spish/navigation_helper/navigation_helper.dart';
import 'package:spish/presentation/elements/custom_text.dart';
import 'package:spish/presentation/models/sender_model.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/presentation/view/chat_setting/chat_setting_view.dart';

import '../../../../ui_config/front_end_config.dart';

class ChatRoomAppBar extends StatelessWidget {
  const ChatRoomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_sharp , color: FrontEndConfig.kGrayTextColor,)),
                SizedBox(
                  width: ScreenSize().width(context, 0.02),
                ),
                SizedBox(
                    height: ScreenSize().height(context, 0.06),
                    width: ScreenSize().height(context, 0.06),
                    child: CircleAvatar(
                      backgroundColor: FrontEndConfig.kGrayTextColor,
                    )
                ),
                SizedBox(
                  width: ScreenSize().width(context, 0.02),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: senderData[0].sender.toString(),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      textColor: Colors.white,
                      fontFamily: 'Roboto',
                    ),
                    CustomText(
                      text: senderData[0].time.toString(),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      textColor: Colors.white,
                      fontFamily: 'Roboto',
                    ),
                  ],
                ),
              ],
            ),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      NavigationHelper.pushRoute(context, const ChatSettingView());
                    },
                    child: Icon(
                      Icons.more_vert_rounded,
                      color: FrontEndConfig.kGrayTextColor,
                      size: 34,
                    ),
                  ),
                  SizedBox(
                    width: ScreenSize().width(context, 0.01),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: ScreenSize().height(context, 0.003),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF39FF14).withOpacity(0.7),
                  const Color(0xFFFC0082).withOpacity(0.5),
                  const Color(0xFFFC0082).withOpacity(0.7),
                ],
              )),
        ),

      ],
    );
  }
}

