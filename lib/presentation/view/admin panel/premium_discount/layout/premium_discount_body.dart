import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_button.dart';
import 'package:spish/presentation/view/admin%20panel/premium_discount/widgets/curved_button.dart';

import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_text.dart';
import '../../../../utils/screen_size.dart';
import '../../../../utils/toast.dart';
import '../../../add_report/layout/widgets/dropdown.dart';
import '../../analytics/widgets/post_acitivty.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PremiumDiscountBody extends StatefulWidget {
  const PremiumDiscountBody({Key? key}) : super(key: key);

  @override
  State<PremiumDiscountBody> createState() => _PremiumDiscountBodyState();
}

class _PremiumDiscountBodyState extends State<PremiumDiscountBody> {
  int price = 5;
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenSize().height(context, 0.02),),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 20),
                decoration: BoxDecoration(
                    color: FrontEndConfig.kCommentIconColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'subscription_for'.tr(),
                          fontSize:   15,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          textColor: Colors.white,
                        ),
                        Container(
                          width:  ScreenSize().width(context, 0.27),
                            child: CustomDropDown(
                                isTitle: false,
                                height: 0.025,
                                padding: 0.0,
                                items: ['12 ${'months'.tr()}' , '6 ${'months'.tr()}' , '3 ${'months'.tr()}'])),

                      ],
                    ),
                    SizedBox(height: ScreenSize().height(context, 0.02),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: FrontEndConfig.kTextFieldFontColor,
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: CircularPercentIndicator(
                            backgroundColor: Colors.white,
                            radius: 50.0,
                            lineWidth: 13.0,
                            animation: true,
                            percent: 0.7,
                            center: new Text(
                              "70.0%",
                              style:
                              new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: FrontEndConfig.kDeepPurple,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                          ),
                          child: Column(
                            children: [
                              CustomText(
                                text: 'manage_discount'.tr(),
                                fontSize:   10,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto',
                                textColor: Colors.black,
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  CustomText(
                                    text: '$price \$',
                                    fontSize:   15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto',
                                    textColor: Colors.black,
                                  ),
                                  SizedBox(width: 10,),
                                  CustomText(
                                    text: 'discounts'.tr(),
                                    fontSize:   10,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Roboto',
                                    textColor: Colors.black,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                             Row(
                               children: [
                                 CurvedButton(onPress: (){
                                   setState(() {
                                     if(price == 5)
                                       {
                                         ToastMsg().toastMessage('Price can\'t be less than 5');
                                       }
                                     else
                                       {
                                         price = price-5;
                                       }
                                   });
                                 },text: '-', textColor: Colors.black , borderColor: Colors.black,),
                                 SizedBox(width: 10,),
                                 CurvedButton(onPress: (){
                                   setState(() {
                                     price = price+5;
                                     print('Price: $price');
                                   });
                                 },text: '+', textColor: Colors.black , borderColor: Colors.black,),
                               ],
                             ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    CurvedButton(text: 'give_discount_of'.tr(), textColor: Colors.white , borderColor: Colors.white, fontSize: 10 , fontWeight: FontWeight.w300),
                  ],
                ),
              ),

              SizedBox(height: ScreenSize().height(context, 0.02),),
              CustomText(
                text: '12_months_premium'.tr(),
                fontSize:   15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
                textColor: Colors.white,
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
                      text: 'top_embers'.tr(),
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
                          text: 'profile_picture'.tr(),
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
                          text: 'memb_since'.tr(),
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                        ),
                        CustomText(
                          text: 'memb_till'.tr(),
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
                        return PostActivity(name: 'Waleed', userName: '@waleed', datePosted: '07/15', numberOfViews: 'Till Now', isTill: true,);
                      },)

                  ],
                ),
              ),
              SizedBox(height: ScreenSize().height(context, 0.02),),
              CustomButton(text: 'Delete Discount', isIcon: false, containerColor: Colors.red, width: 0.4, isGradient: false, fontColor: Colors.white, fontSize: 15, fontWeight: FontWeight.w900,)
            ],
          ),
        ),
      ),
    );
  }
}
