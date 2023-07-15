import 'package:flutter/material.dart';
import 'package:spish/presentation/view/auth/new_password/new_password_view.dart';

import '../../../../../navigation_helper/navigation_helper.dart';
import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../utils/screen_size.dart';
import '../../widgets/otp_textfield.dart';

class ForgotPasswordBody extends StatefulWidget {
  const ForgotPasswordBody({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordBody> createState() => _ForgotPasswordBodyState();
}
TextEditingController _emailController = TextEditingController();

TextEditingController _firstDigitController = TextEditingController();
TextEditingController _secondDigitController = TextEditingController();
TextEditingController _thirdDigitController = TextEditingController();
TextEditingController _fourthDigitController = TextEditingController();
TextEditingController _fifthDigitController = TextEditingController();
TextEditingController _sixthDigitController = TextEditingController();

class _ForgotPasswordBodyState extends State<ForgotPasswordBody> {
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
              CustomText(text: 'Reset your password', fontSize: 14, fontWeight: FontWeight.w500, textColor: Colors.white, fontFamily: 'Roboto',),
              SizedBox(
                  width: ScreenSize().width(context, 0.14),
                  child: Divider(height: ScreenSize().height(context, 0.04) , color: Colors.white,thickness: 3,)),
              SizedBox(height: ScreenSize().height(context, 0.018),),
              CustomText(text: 'Can’t remember my password', fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kLightGrayTextColor, fontFamily: 'Roboto',),
              SizedBox(height: ScreenSize().height(context, 0.018),),
              Container(
                width: ScreenSize().height(context, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    CustomTextField(textInputType: TextInputType.emailAddress , controller: _emailController, fieldName: 'Username / Email' , isPass: false),
                    SizedBox(height: ScreenSize().height(context, 0.030),),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerLeft,
                        child: CustomText(text: 'Enter code', fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kTextFieldFontColor, fontFamily: 'Roboto',)),
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
                            NavigationHelper.pushRoute(context, const NewPasswordView());
                            print('Forgor Password Body');
                          },
                          text: 'Verify Code', fontColor: Colors.white, width: 0.39, isIcon: true, shadowColor: FrontEndConfig.kGradientButtonShadowColor, fontWeight: FontWeight.w600, fontSize: 16, iconData: Icons.arrow_forward_sharp,),
                      ),

                    ),
                    SizedBox(height: ScreenSize().height(context, 0.020),),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerLeft,
                        child: CustomText(text: 'The code will be sent to your mail if the email / username entered is correct', fontSize: 9, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kLightGrayTextColor, fontFamily: 'Roboto',)),
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
