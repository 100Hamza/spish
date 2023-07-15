import 'package:flutter/material.dart';
import 'package:spish/presentation/view/admin%20panel/ads_managment/widgets/add_creatd_list_model.dart';
import 'package:spish/presentation/view/admin%20panel/new_ad/new_ad_view.dart';

import '../../../../../navigation_helper/navigation_helper.dart';
import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text.dart';
import '../../../../utils/screen_size.dart';
import '../../overview/graphs/bar_chart/activte_right_grapgh.dart';
import '../../overview/graphs/multiple_lines_graph/multi_line_graph_view.dart';
import '../../overview/graphs/pi_chart/active_users.dart';
import '../../overview/graphs/pi_chart/pi_chart_body.dart';
import '../graph/ads_managment_pi_chard.dart';

class AdsManagementBody extends StatefulWidget {
  const AdsManagementBody({Key? key}) : super(key: key);

  @override
  State<AdsManagementBody> createState() => _AdsManagementBodyState();
}

class _AdsManagementBodyState extends State<AdsManagementBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              child: Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                height: ScreenSize().height(context, 0.07),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: FrontEndConfig.kSubscribeCardColor),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: CustomText(
                    text: 'Ad Management',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                    textColor: FrontEndConfig.kCommentTitleTextColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreenSize().height(context, 0.02),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 5.0, bottom: 0, left: 5, right: 2.5),
                child: Container(
                  height: ScreenSize().height(context, 0.22),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(colors: [
                      const Color(0xFF93129D),
                      const Color(0xFFFFA300),
                    ]),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'No. Ad click',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        textColor: Colors.white,
                        fontFamily: 'Roboto',
                      ),
                      const PieChartSample2()
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: ScreenSize().height(context, 0.22),
                decoration: BoxDecoration(
                  color: FrontEndConfig.kSubscribeCardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                      text: 'Amount earn',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            CustomText(
                              text: '\$50K',
                              fontSize: 50,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              textColor: FrontEndConfig.kCommentTitleTextColor,
                            ),
                            SizedBox(
                              height: ScreenSize().height(context, 0.005),
                            ),
                            CustomText(
                              text: '\$5/click',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              textColor: FrontEndConfig.kCommentTitleTextColor,
                            ),
                          ],
                        ),
                        const SizedBox(
                            height: 120,
                            width: 120,
                            child: Image(
                                image: AssetImage('assets/images/bars.png'))),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(5),
                height: ScreenSize().height(context, 0.25),
                decoration: BoxDecoration(
                  color: FrontEndConfig.kSubscribeCardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Ad Created',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: CustomButton(
                              onPress: () {
                                NavigationHelper.pushRoute(
                                    context, const NewAdView());
                              },
                              text: 'New',
                              fontColor: Colors.white,
                              height: 35,
                              width: 0.26,
                              radius: 5,
                              isIcon: true,
                              shadowColor:
                                  FrontEndConfig.kGradientButtonShadowColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              iconData: Icons.add,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Logo',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                            textColor: FrontEndConfig.kCommentTitleTextColor,
                          ),
                          CustomText(
                            text: 'Name',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                            textColor: FrontEndConfig.kCommentTitleTextColor,
                          ),
                          CustomText(
                            text: 'Ad Name',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                            textColor: FrontEndConfig.kCommentTitleTextColor,
                          ),
                          CustomText(
                            text: 'Date',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto',
                            textColor: FrontEndConfig.kCommentTitleTextColor,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                        return AdCreatedModel(name: 'Waleed', addName: 'Banking API', date: '07/15');
                      },),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
