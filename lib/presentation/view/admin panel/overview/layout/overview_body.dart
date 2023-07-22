import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/presentation/view/admin%20panel/overview/graphs/multiple_lines_graph/multi_line_graph_view.dart';
import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_text.dart';
import '../../../../elements/custome_gradient_text.dart';
import '../graphs/bar_chart/activte_right_grapgh.dart';
import '../graphs/bar_chart/bar_chart_body.dart';
import '../graphs/pi_chart/active_users.dart';
import '../graphs/pi_chart/pi_chart_body.dart';


class OverViewBody extends StatefulWidget {
  const OverViewBody({Key? key}) : super(key: key);

  @override
  State<OverViewBody> createState() => _OverViewBodyState();
}

class _OverViewBodyState extends State<OverViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0 , left: 8.0 , right: 8.0),
              child: Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                height: ScreenSize().height(context, 0.07),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: FrontEndConfig.kSubscribeCardColor
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: CustomText(
                    text: 'overview'.tr(),
                    fontSize:   20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                    textColor: FrontEndConfig.kCommentTitleTextColor,
                  ),
                ),
              ),
            ),
            SizedBox(height: ScreenSize().height(context, 0.02),),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
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
                          height: ScreenSize().height(context, 0.22),
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: FrontEndConfig.kDarkBgColor
                          ),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomGradientText(
                                text: 'Registered Users',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                textColor: Colors.white,
                                fontFamily: 'Roboto',
                              ),
                              SizedBox(height: ScreenSize().height(context, 0.02),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      CustomText(
                                        text: '5000k',
                                        fontSize:   16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto',
                                        textColor: FrontEndConfig.kCommentTitleTextColor,
                                      ),
                                      CustomText(
                                        text: 'users'.tr(),
                                        fontSize:   10,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto',
                                        textColor: FrontEndConfig.kCommentTitleTextColor,
                                      ),
                                    ],
                                  ),

                                  Container(
                                    width: 120,
                                      child: const PiChartBody()),
                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 5.0 , bottom: 5 , left: 2.5 , right: 5),
                      child: Container(
                        height: ScreenSize().height(context, 0.22),
                        width: 150,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: FrontEndConfig.kDarkBgColor
                        ),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: ScreenSize().height(context, 0.02),),
                            BarChartBody()

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
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
                          height: ScreenSize().height(context, 0.22),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: FrontEndConfig.kDarkBgColor
                          ),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: CustomText(
                                  text: 'Active Users',
                                  fontSize:   10,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto',
                                  textColor: FrontEndConfig.kCommentTitleTextColor,
                                ),
                              ),
                              SizedBox(height: ScreenSize().height(context, 0.02),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      width: 100,
                                      child: const ActiveUsersPiChartBody()),
                                  Column(

                                    children: [
                                      Container(
                                        width: 60,
                                        alignment: Alignment.centerRight,
                                        child: CustomText(
                                          text: 'premium_users'.tr(),
                                          fontSize:   6,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Roboto',
                                          textColor: FrontEndConfig.kCommentTitleTextColor,
                                        ),
                                      ),
                                      const SizedBox(
                                          height: 50,
                                          width: 60,
                                          child: Image(image: AssetImage('assets/images/line.png'))),
                                      Container(
                                        width: 60,
                                        child: CustomText(
                                          text: 'free_users'.tr(),
                                          fontSize:   6,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Roboto',
                                          textColor: FrontEndConfig.kCommentTitleTextColor,
                                        ),
                                      ),
                                      SizedBox(height: 20,)
                                    ],
                                  ),

                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 5.0 , bottom: 5 , left: 2.5 , right: 5),
                      child: Container(
                        height: ScreenSize().height(context, 0.22),
                        width: 150,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: FrontEndConfig.kDarkBgColor
                        ),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              text: 'user_engagement'.tr(),
                              fontSize:   10,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              textColor: FrontEndConfig.kCommentTitleTextColor,
                            ),
                            ActivieRightGrapgh()

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                        color: FrontEndConfig.kGreenColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: ScreenSize().height(context, 0.19),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CustomText(
                            text: 'reported_contents'.tr(),
                            fontSize:   16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Roboto',
                            textColor: FrontEndConfig.kCommentTitleTextColor,
                          ),
                          SizedBox(
                            height: ScreenSize().height(context, 0.14),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: '250.5K',
                                          fontSize:   16,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Roboto',
                                          textColor: FrontEndConfig.kCommentTitleTextColor,
                                        ),
                                        CustomText(
                                          text: 'reported_messages'.tr(),
                                          fontSize:   10,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Roboto',
                                          textColor: FrontEndConfig.kCommentTitleTextColor,
                                        ),
                                      ],
                                    ),
                                    Icon(Icons.remove_red_eye  , color: FrontEndConfig.kSubscribeAmountColor,)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: '250.5K',
                                          fontSize:   16,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Roboto',
                                          textColor: FrontEndConfig.kCommentTitleTextColor,
                                        ),
                                        CustomText(
                                          text: 'reported_post'.tr(),
                                          fontSize:   10,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Roboto',
                                          textColor: FrontEndConfig.kCommentTitleTextColor,
                                        ),
                                      ],
                                    ),
                                    Icon(Icons.remove_red_eye  , color: FrontEndConfig.kSubscribeAmountColor,)
                                  ],
                                ),
                              ],
                            ),
                          )

                        ],
                      ),
                    ),

                  )),
                  SizedBox(width: 10,),
                  Expanded(child: MultiLineGraphView()),

                ],
              ),
            ),
            SizedBox(height: ScreenSize().height(context, 0.01) ,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'financial_overview'.tr(),
                    fontSize:   10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                    textColor: FrontEndConfig.kCommentTitleTextColor,
                  ),
                  SizedBox(height: ScreenSize().height(context, 0.02) ,),
                    Row(
                      children: [
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
                                    text: 'monthly_revenue'.tr(),
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
                                        child: Image(image: AssetImage('assets/images/leftgraph.png'))),
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
                                        text: 'Total Revenue',
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
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
