import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_text.dart';
import 'package:spish/presentation/elements/custom_text_field.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/presentation/view/auth/login/login_view.dart';

import '../../../../../navigation_helper/navigation_helper.dart';
import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_button.dart';
import '../../verfiy_account/verify_account_view.dart';

class RegistrationBody extends StatefulWidget {
  const RegistrationBody({Key? key}) : super(key: key);

  @override
  State<RegistrationBody> createState() => _RegistrationBodyState();
}

TextEditingController _firstName = TextEditingController();
TextEditingController _lastName = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _userName = TextEditingController();
TextEditingController _passController = TextEditingController();



class _RegistrationBodyState extends State<RegistrationBody> {

  String dropdownvalue = 'English US';

  // List of items in our dropdown menu
  var items = [
  'English US',
  'Spanish',
  'Chinese',
  'Hindi',
  'Arabic',
  'Portuguese',
  'Italian',
  'French',
  'German',
  'Russian',
  'Japanese'
  ];

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Container(
            height: ScreenSize().height(context, 1),
            width: ScreenSize().height(context, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(
                height: ScreenSize().height(context, 0.2),
                width: ScreenSize().height(context, 0.2),
                  child: const Image(image: AssetImage('assets/images/logo.png'))),
              SizedBox(height: ScreenSize().height(context, 0.034),),
              CustomText(text: 'join_the_splash_community'.tr(), fontSize: 14, fontWeight: FontWeight.w500, textColor: Colors.white, fontFamily: 'Roboto',),
              SizedBox(
                width: ScreenSize().width(context, 0.14),
                  child: Divider(height: ScreenSize().height(context, 0.04) , color: Colors.white,thickness: 3,)),
                SizedBox(height: ScreenSize().height(context, 0.025),),
                SizedBox(
                width: ScreenSize().height(context, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: ScreenSize().width(context, 0.5),
                          child: CustomTextField(textInputType: TextInputType.name , controller: _firstName, fieldName: 'first_name'.tr()),
                        ),
                        Container(
                            width: ScreenSize().width(context, 0.5),
                            child: CustomTextField(textInputType: TextInputType.name , controller: _lastName, fieldName: 'last_name'.tr()),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: ScreenSize().width(context, 0.5),
                          child: CustomTextField(textInputType: TextInputType.emailAddress , controller: _emailController, fieldName: 'email_address'.tr()),
                        ),
                        Container(

                          width: ScreenSize().width(context, 0.5),
                          child: CustomTextField(textInputType: TextInputType.name , controller: _userName, fieldName: 'user_name'.tr()),
                        ),
                      ],
                    ),
                    CustomTextField(textInputType: TextInputType.visiblePassword , controller: _passController, fieldName: 'password'.tr() , isPass: true),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        CustomText(text: 'language'.tr(), fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kTextFieldFontColor, fontFamily: 'Roboto',),
                        const SizedBox(height: 5,),
                        Container(
                          height: ScreenSize().height(context, 0.05),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(

                              color: FrontEndConfig.kTextFieldFilledColor,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: DropdownButton(
                            dropdownColor: FrontEndConfig.kSubscribeCardColor,
                            isExpanded: true,
                            underline: Container(),
                            // Initial Value
                            value: dropdownvalue,
                            // Down Arrow Icon
                            icon: Icon(Icons.keyboard_arrow_down , color: FrontEndConfig.kTextFieldFontColor,),
                            // Array list of items
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: CustomText(text: items, fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kTextFieldFontColor, fontFamily: 'Roboto',),
                                // child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                                // Map the selected language name to the corresponding locale code
                                Locale? selectedLocale;
                                switch (newValue) {
                                  case 'English US':
                                    selectedLocale = Locale('en', 'US');
                                    break;
                                  case 'Spanish':
                                    selectedLocale = Locale('es', 'ES');
                                    break;
                                  case 'Chinese':
                                    selectedLocale = Locale('zh', 'CN');
                                    break;
                                  case'Arabic':
                                    selectedLocale = Locale('ar', 'SA');
                                    break;
                                  case'Hindi':
                                    selectedLocale = Locale('hi', 'IN');
                                    break;
                                  case'Portuguese':
                                    selectedLocale = Locale('pt', 'PT');
                                    break;
                                  case'Italian':
                                    selectedLocale = Locale('it', 'IT');
                                    break;
                                  case'French':
                                    selectedLocale = Locale('fr', 'FR');
                                    break;
                                  case'German':
                                    selectedLocale = Locale('de', 'DE');
                                    break;
                                  case'Russian':
                                    selectedLocale = Locale('ru', 'RU');
                                    break;
                                  case'Japanese':
                                    selectedLocale = Locale('ja', 'JP');
                                    break;
                                // Add more cases for other supported languages
                                  default:
                                    selectedLocale = Locale('en', 'US');
                                    break;
                                }
                                // Update app's language with the selected locale code
                                context.setLocale(selectedLocale);
                              });
                            },
                          ),
                        ),
                          SizedBox(height: ScreenSize().height(context, 0.015),),
                          InkWell(
                              onTap: (){
                                NavigationHelper.pushRoute(context, const LoginView());
                              },
                              child: CustomText(text: 'already_joined'.tr(), fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kGrayTextColor, fontFamily: 'Roboto',)),

                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(19.0),
                      child: Container(
                        alignment: Alignment.centerRight,
                        height: 50,
                        child: CustomButton(
                          onPress: (){
                            NavigationHelper.pushRoute(context, const VerifyAccountView());
                          },
                          text: 'join_spish'.tr(), fontColor: Colors.white, width: 1, isIcon: true, shadowColor: FrontEndConfig.kGradientButtonShadowColor, fontWeight: FontWeight.w600, fontSize: 16, iconData: Icons.directions_run,),
                      ),
                    )
                  ],
                ),
              ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
