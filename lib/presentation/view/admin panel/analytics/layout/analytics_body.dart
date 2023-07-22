import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/view/admin%20panel/analytics/widgets/post_acitivty.dart';

import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_text.dart';
import '../../../../utils/screen_size.dart';
import '../../ads_managment/widgets/add_creatd_list_model.dart';
import '../../manage_user/widgets/manage_user.dart';
import '../../overview/graphs/bar_chart/activte_right_grapgh.dart';
import '../../overview/graphs/pi_chart/active_users.dart';
import '../graph/likes_graph.dart';

class AnalyticsBody extends StatefulWidget {
  const AnalyticsBody({Key? key}) : super(key: key);

  @override
  State<AnalyticsBody> createState() => _AnalyticsBodyState();
}

class _AnalyticsBodyState extends State<AnalyticsBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: ScreenSize().height(context, 0.01),),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: ScreenSize().height(context, 0.12),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color(0xFF470058),
                          Color(0xFFFF0099),
                        ]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0 , right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: 'total_revenue'.tr(),
                                  fontSize:   10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                  textColor: FrontEndConfig.kCommentTitleTextColor,
                                ),
                                CustomText(
                                  text: '2023',
                                  fontSize:   8,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                  textColor: FrontEndConfig.kCommentTitleTextColor,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                  height: 40,
                                  width: 60,
                                  child: Image(image: AssetImage('assets/images/rightgraph.png'))),
                              Column(
                                children: [
                                  CustomText(
                                    text: '\$50K',
                                    fontSize:   20,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto',
                                    textColor: FrontEndConfig.kCommentTitleTextColor,
                                  ),
                                  SizedBox(height: ScreenSize().height(context, 0.005) ,),
                                  CustomText(
                                    text: 'Premium Membership',
                                    fontSize:   5,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto',
                                    textColor: FrontEndConfig.kCommentTitleTextColor,
                                  ),
                                ],
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: ScreenSize().width(context, 0.05) ,),
                  Expanded(
                    child: Container(
                      height: ScreenSize().height(context, 0.12),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          const Color(0xFFFFA300),
                          const Color(0xFF93129D),
                        ]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: CustomText(
                              text: 'total_premium_user'.tr(),
                              fontSize:   10,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              textColor: FrontEndConfig.kCommentTitleTextColor,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                  height: 40,
                                  width: 60,
                                  child: Image(image: AssetImage('assets/images/diamond.png'))),
                              Column(
                                children: [
                                  CustomText(
                                    text: '\$50K',
                                    fontSize:   20,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto',
                                    textColor: FrontEndConfig.kCommentTitleTextColor,
                                  ),
                                  SizedBox(height: ScreenSize().height(context, 0.005) ,),
                                  CustomText(
                                    text: 'users'.tr(),
                                    fontSize:   15,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto',
                                    textColor: FrontEndConfig.kCommentTitleTextColor,
                                  ),
                                ],
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScreenSize().height(context, 0.06),),
              Container(
                height: ScreenSize().height(context, 0.05),
                decoration: BoxDecoration(
                  color: Color(0XFFEA3EF7).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 5),
                        alignment: Alignment.topCenter,
                        child: CustomText(
                          text: 'no_of_photos'.tr(),
                          fontSize:   10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kDeepPurple,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                          text: '100K${'images'.tr()}',
                          fontSize:   15,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kDeepPurple,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: ScreenSize().height(context, 0.05),
                decoration: BoxDecoration(
                    color: FrontEndConfig.kDeepPurple,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 5),
                        alignment: Alignment.topCenter,
                        child: CustomText(
                          text: 'no_of_videos'.tr(),
                          fontSize:   10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kLightWhite,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                          text: '200 ${'videos'.tr()}',
                          fontSize:   15,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kLightWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: ScreenSize().height(context, 0.05),
                decoration: BoxDecoration(
                    color: FrontEndConfig.kRegisteredUsersPiBarFreeUserColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 5),
                        alignment: Alignment.topCenter,
                        child: CustomText(
                          text: 'total_ad_no_side'.tr(),
                          fontSize:   10,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kDeepPurple,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                          text: '500 ${'links'.tr()}',
                          fontSize:   15,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kDeepPurple,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: ScreenSize().height(context, 0.02),),
              Container(
                decoration: BoxDecoration(
                    color: FrontEndConfig.kSubscribeCardColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0 , bottom: 5 , left: 5 , right: 2.5),
                        child: Container(
                          height: ScreenSize().height(context, 0.185),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: FrontEndConfig.kCommentTitleTextColor
                          ),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: CustomText(
                                  text: 'comments'.tr(),
                                  fontSize:   10,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Roboto',
                                  textColor: Colors.black,
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      width: 100,
                                      child: const LikesSidePiChart()),
                                  Column(
                                    children: [
                                      const SizedBox(
                                          height: 50,
                                          width: 60,
                                          child: Image(image: AssetImage('assets/images/comments.png'))),

                                    ],
                                  ),

                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5.0 , bottom: 5 , left: 5 , right: 2.5),
                        child: Container(
                          height: ScreenSize().height(context, 0.185),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: FrontEndConfig.kActiveMaleColor
                          ),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: CustomText(
                                  text: 'likes'.tr(),
                                  fontSize:   10,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Roboto',
                                  textColor: Colors.black,
                                ),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      width: 100,
                                      child: const LikesSidePiChart()),
                                  Column(
                                    children: [
                                      const SizedBox(
                                          height: 50,
                                          width: 60,
                                          child: Image(image: AssetImage('assets/images/comments.png'))),

                                    ],
                                  ),

                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: ScreenSize().height(context, 0.02),),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: FrontEndConfig.kSubscribeCardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'post_activity'.tr(),
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                    ),
                    SizedBox(height: ScreenSize().height(context, 0.02),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'profile_pic'.tr(),
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                        ),
                        CustomText(
                          text: 'name'.tr(),
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                        ),
                        CustomText(
                          text: 'user_name'.tr(),
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                        ),
                        CustomText(
                          text: 'date_posted'.tr(),
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                        ),
                        CustomText(
                          text: 'no_of_views'.tr(),
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                        ),
                        CustomText(
                          text: 'member'.tr(),
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return PostActivity(name: 'Waleed', userName: '@waleed', datePosted: '07/15', numberOfViews: '10k',);
                      },)

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
