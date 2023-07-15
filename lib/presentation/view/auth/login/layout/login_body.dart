import 'package:flutter/material.dart';
import 'package:spish/presentation/view/auth/forget_password/forgot_password_view.dart';
import 'package:spish/presentation/view/auth/registration/registration_view.dart';
import 'package:spish/presentation/view/subscribe_to_premium/subscribe_to_premium_view.dart';

import '../../../../../navigation_helper/navigation_helper.dart';
import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../utils/screen_size.dart';
import '../../verfiy_account/verify_account_view.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}
TextEditingController _emailController = TextEditingController();
TextEditingController _passController = TextEditingController();

class _LoginBodyState extends State<LoginBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: ScreenSize().height(context, 1),
          width: ScreenSize().height(context, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: ScreenSize().height(context, 0.2),
                  width: ScreenSize().height(context, 0.2),
                  child: const Image(image: AssetImage('assets/images/logo.png'))),
              SizedBox(height: ScreenSize().height(context, 0.034),),
              CustomText(text: 'Login to Spish Community', fontSize: 14, fontWeight: FontWeight.w500, textColor: Colors.white, fontFamily: 'Roboto',),
              SizedBox(
                  width: ScreenSize().width(context, 0.14),
                  child: Divider(height: ScreenSize().height(context, 0.04) , color: Colors.white,thickness: 3,)),
              SizedBox(height: ScreenSize().height(context, 0.02),),
              Container(
                  alignment: Alignment.center,
                  child: CustomText(text: 'Hey!! You are missing out !!!', fontSize: 10, fontWeight: FontWeight.w400, textColor: FrontEndConfig.kGrayTextColor, fontFamily: 'Roboto',)),
              SizedBox(height: ScreenSize().height(context, 0.025),),
              SizedBox(
                width: ScreenSize().height(context, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(textInputType: TextInputType.emailAddress , controller: _emailController, fieldName: 'Username / Email' , isPass: false),
                    CustomTextField(textInputType: TextInputType.visiblePassword , controller: _passController, fieldName: 'Password' , isPass: true),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                              child: InkWell(
                                  onTap: (){
                                    print('Can\'t Remember ?');
                                    NavigationHelper.pushRoute(context, const ForgotPasswordView());
                                  },
                                  child: CustomText(text: 'Forgot your password', fontSize: 9, fontWeight: FontWeight.w400, textColor: FrontEndConfig.kCanNotRememberTextColor, fontFamily: 'Roboto',))),
                          const SizedBox(height: 5,),
                          SizedBox(height: ScreenSize().height(context, 0.015),),
                          Container(
                              alignment: Alignment.centerLeft,
                              child: InkWell(
                                  onTap: (){
                                    NavigationHelper.pushRoute(context, const RegistrationView());
                                  },
                                  child: CustomText(text: 'Yet to be a member ?', fontSize: 10, fontWeight: FontWeight.w400, textColor: FrontEndConfig.kGrayTextColor, fontFamily: 'Roboto',))),

                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: CustomButton(
                          onPress: (){
                            NavigationHelper.pushRoute(context, const SubscribeToPremiumView());

                          },
                          text: 'Login', fontColor: Colors.white, width: 0.39, isIcon: true, shadowColor: FrontEndConfig.kGradientButtonShadowColor, fontWeight: FontWeight.w600, fontSize: 16, iconData: Icons.directions_run,),
                      ),
                    )
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
