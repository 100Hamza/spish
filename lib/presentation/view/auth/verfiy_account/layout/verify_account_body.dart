import 'package:flutter/material.dart';
import 'package:spish/presentation/view/auth/widgets/otp_textfield.dart';


import '../../../../../navigation_helper/navigation_helper.dart';
import '../../../../../ui_config/front_end_config.dart';

import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../utils/screen_size.dart';
import '../../account_verified/account_verified_view.dart';

class VerifyAccountBody extends StatefulWidget {
  const VerifyAccountBody({Key? key}) : super(key: key);

  @override
  State<VerifyAccountBody> createState() => _VerifyAccountBodyState();
}


TextEditingController _firstDigitController = TextEditingController();
TextEditingController _secondDigitController = TextEditingController();
TextEditingController _thirdDigitController = TextEditingController();
TextEditingController _fourthDigitController = TextEditingController();
TextEditingController _fifthDigitController = TextEditingController();
TextEditingController _sixthDigitController = TextEditingController();

class _VerifyAccountBodyState extends State<VerifyAccountBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 10),
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
              SizedBox(height: ScreenSize().height(context, 0.05),),
              CustomText(text: 'Verify your account', fontSize: 14, fontWeight: FontWeight.w500, textColor: Colors.white, fontFamily: 'Roboto',),
              SizedBox(
                  width: ScreenSize().width(context, 0.14),
                  child: Divider(height: ScreenSize().height(context, 0.04) , color: Colors.white,thickness: 3,)),
              SizedBox(height: ScreenSize().height(context, 0.018),),
              CustomText(text: 'A main has been sent to yout email    ', fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kLightGrayTextColor, fontFamily: 'Roboto',),
              Container(
                width: ScreenSize().height(context, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: ScreenSize().height(context, 0.030),),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.centerLeft,
                        child: CustomText(text: 'Enter the code that was sent to your email', fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kLightGrayTextColor, fontFamily: 'Roboto',)),
                    Container(
                      child: Row(
                        children: [
                          Expanded(child: OTPTextField(textInputType: TextInputType.number , controller: _firstDigitController, fieldName: '' , maxlength: 1 , textAlign: TextAlign.center)),
                          Expanded(child: OTPTextField(textInputType: TextInputType.number , controller: _secondDigitController, fieldName: '' , maxlength: 1, textAlign: TextAlign.center)),
                          Expanded(child: OTPTextField(textInputType: TextInputType.number , controller: _thirdDigitController, fieldName: '' , maxlength: 1, textAlign: TextAlign.center)),
                          Expanded(child: OTPTextField(textInputType: TextInputType.number , controller: _fourthDigitController, fieldName: '' , maxlength: 1, textAlign: TextAlign.center)),
                          Expanded(child: OTPTextField(textInputType: TextInputType.number , controller: _fifthDigitController, fieldName: '' , maxlength: 1, textAlign: TextAlign.center)),
                          Expanded(child: OTPTextField(textInputType: TextInputType.number , controller: _sixthDigitController, fieldName: '' , maxlength: 1, textAlign: TextAlign.center)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        child: CustomButton(
                          onPress: (){
                            NavigationHelper.pushRoute(context, const AccountVerifiedView());
                          },
                          text: 'Verify Code', fontColor: Colors.white, width: 0.39, isIcon: true, shadowColor: FrontEndConfig.kGradientButtonShadowColor, fontWeight: FontWeight.w600, fontSize: 16, iconData: Icons.arrow_forward_sharp,),
                      ),

                    ),
                    SizedBox(height: ScreenSize().height(context, 0.020),),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerLeft,
                        child: CustomText(text: 'The code will be sent to your mail  if the email entered is correct', fontSize: 9, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kLightGrayTextColor, fontFamily: 'Roboto',)),
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
