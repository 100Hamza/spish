import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/navigation_helper/navigation_helper.dart';
import 'package:spish/presentation/elements/custom_button.dart';
import 'package:spish/presentation/elements/custom_text.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/presentation/utils/toast.dart';
import 'package:spish/presentation/view/auth/registration/registration_view.dart';
import 'package:spish/ui_config/front_end_config.dart';

class GetStartedBody extends StatelessWidget {
  const GetStartedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize().height(context, 1),
      width: ScreenSize().width(context, 1),
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/startedimage.png'), fit: BoxFit.cover)
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
            const Color(0xFF39FF14).withOpacity(0.7),
            const Color(0xFFFC0082).withOpacity(0.5),
            const Color(0xFFFC0082).withOpacity(0.7),
          ],
            stops: [0.0, 0.8, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30 , right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: ScreenSize().height(context, 0.2),),
              CustomText(text: 'discover'.tr() , fontFamily: 'Lora' , fontWeight: FontWeight.w600, fontSize: 28, textColor: Colors.white),
              SizedBox(height: ScreenSize().height(context, 0.08),),
              CustomButton(
                onPress: (){
                  NavigationHelper.pushRoute(context, const RegistrationView());
                },
                text: 'getStarted'.tr(), fontColor: FrontEndConfig.kGetStartedButtonTextColor, isGradient: false, width: 0.39, isIcon: false, shadowColor: Colors.white, fontWeight: FontWeight.w600, fontSize: 16,)
            ],
          ),
        ),
      ),
    );
  }
}
