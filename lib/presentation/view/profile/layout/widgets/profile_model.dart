import 'package:flutter/material.dart';

import '../../../../../navigation_helper/navigation_helper.dart';
import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_text.dart';
import '../../../../elements/custome_gradient_text.dart';
import '../../../../utils/screen_size.dart';
import '../../../feeds/widgets/reactions_on_post.dart';
import '../../../profile_pictures/profile_pictures_view.dart';


class ProfileModel extends StatelessWidget {
  VoidCallback? onPress;
  bool isMore;
  ProfileModel({this.onPress , this.isMore = false});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(1.0),
            decoration: BoxDecoration(
                color: FrontEndConfig.kDarkBgColor,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: InkWell(
                    onTap: (){
                      NavigationHelper.pushRoute(context, ProfilePicView());
                    },
                  ),
                  radius: 35, // Set the radius of the circular avatar
                  backgroundColor: FrontEndConfig.kSubscribeCardColor,// Set the background image
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Muhammad Hamza',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              textColor: FrontEndConfig.kGrayTextColor,
                              fontFamily: 'Roboto',
                            ),
                            SizedBox( height: ScreenSize().height(context, 0.005)),
                            CustomText(
                              text: '@muhammadhamza',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              textColor: FrontEndConfig.kProfileUserNameColor,
                              fontFamily: 'Roboto',
                            ),
                            SizedBox(width: ScreenSize().width(context, 0.012),),
                          ],
                        ),
                        SizedBox( height: ScreenSize().height(context, 0.005)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ReactionsOnPost(icon: Icons.mail , size: 16 , onPress: (){} ,count: 0, isText: true, ),
                            CustomText(
                              text: 'Message',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              textColor: FrontEndConfig.kFabColors,
                              fontFamily: 'Roboto',
                            ),
                            SizedBox(width: ScreenSize().width(context, 0.1),),
                            ReactionsOnPost(icon: Icons.thumb_up_rounded, count: 0 , isText: true,),
                          ],

                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          isMore? Container():  SizedBox( height: ScreenSize().height(context, 0.007)),
          isMore ? const Padding(padding: EdgeInsets.only(top:  10)): CustomGradientText(
            text: 'Change Profile Picture',
            fontSize: 12,
            fontWeight: FontWeight.w400,
            textColor: Colors.white,
            fontFamily: 'Roboto',
          ),
          isMore? Container():  SizedBox( height: ScreenSize().height(context, 0.007)),

          CustomText(
            text: 'Tech Enthusiast | Web Developer & product designer | React js | Son of man',
            fontSize: 12,
            fontWeight: FontWeight.w200,

            textColor: FrontEndConfig.kGrayTextColor,
            fontFamily: 'Roboto',
          ),
          SizedBox( height: ScreenSize().height(context, 0.02)),
          Row(
            children: [
              CustomText(
                text: '10k',
                fontSize: 12,
                fontWeight: FontWeight.w700,
                textColor: FrontEndConfig.kFabColors,
                fontFamily: 'Roboto',
              ),
              CustomText(
                text: ' Followers',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                textColor: FrontEndConfig.kFabColors,
                fontFamily: 'Roboto',
              ),
              SizedBox(
                width: ScreenSize().width(context, 0.06),
              ),
              CustomText(
                text: '320',
                fontSize: 12,
                fontWeight: FontWeight.w700,
                textColor: FrontEndConfig.kFabColors,
                fontFamily: 'Roboto',
              ),
              CustomText(
                text: ' Following',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                textColor: FrontEndConfig.kFabColors,
                fontFamily: 'Roboto',
              ),
              SizedBox(
                width: ScreenSize().width(context, 0.06),
              ),
              InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: onPress,
                child: CustomText(
                  text: isMore? 'Less':'More',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  textColor: FrontEndConfig.kMoreTextColor,
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
          SizedBox( height: ScreenSize().height(context, 0.02)),
          isMore? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'About',
                fontSize: 10,
                fontWeight: FontWeight.w400,
                textColor: FrontEndConfig.kTextFieldFontColor,
                fontFamily: 'Roboto',
              ),
              SizedBox( height: ScreenSize().height(context, 0.007)),
              CustomText(
                text: 'Hey there! I\'m Jane Austen, a passionate and driven business administrator, and I\'m excited to share a bit about myself with you.',
                fontSize: 8,
                fontWeight: FontWeight.w400,
                textColor: FrontEndConfig.kGrayTextColor,
                fontFamily: 'Roboto',
              ),
              SizedBox( height: ScreenSize().height(context, 0.02)),
            ],
          ): Container(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: ScreenSize().height(context, 0.0015),
              decoration: BoxDecoration(
                  color: FrontEndConfig.kReactionsIconsColor
              ),
            ),
          ),
        ],
      ),
    );
  }
}
