import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_button.dart';
import 'package:spish/presentation/view/auth/login/login_view.dart';

import '../../../../../navigation_helper/navigation_helper.dart';
import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_text.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../utils/screen_size.dart';

class NewPasswordBody extends StatefulWidget {
  const NewPasswordBody({Key? key}) : super(key: key);

  @override
  State<NewPasswordBody> createState() => _NewPasswordBodyState();
}
TextEditingController _confirmPassword = TextEditingController();
TextEditingController _passController = TextEditingController();
class _NewPasswordBodyState extends State<NewPasswordBody> {
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
              CustomText(text: 'reset_your_password'.tr(), fontSize: 14, fontWeight: FontWeight.w500, textColor: Colors.white, fontFamily: 'Roboto',),
              SizedBox(
                  width: ScreenSize().width(context, 0.14),
                  child: Divider(height: ScreenSize().height(context, 0.04) , color: Colors.white,thickness: 3,)),
              SizedBox(height: ScreenSize().height(context, 0.02),),
              Container(
                  alignment: Alignment.center,
                  child: CustomText(text: 'cant_not_remember'.tr(), fontSize: 10, fontWeight: FontWeight.w400, textColor: FrontEndConfig.kGrayTextColor, fontFamily: 'Roboto',)),
              SizedBox(height: ScreenSize().height(context, 0.025),),
              SizedBox(
                width: ScreenSize().height(context, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(textInputType: TextInputType.emailAddress , controller: _passController, fieldName: 'new_password'.tr() , isPass: true),
                    CustomTextField(textInputType: TextInputType.visiblePassword , controller: _confirmPassword, fieldName: 'confirm_password'.tr() , isPass: true),
                    Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: CustomButton(
                          onPress: (){
                            NavigationHelper.pushRoute(context, const LoginView());


                          },
                          text: 'submit'.tr(), fontColor: Colors.white, width: 0.39, isIcon: true, shadowColor: FrontEndConfig.kGradientButtonShadowColor, fontWeight: FontWeight.w600, fontSize: 16, iconData: Icons.arrow_forward_sharp,),
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
