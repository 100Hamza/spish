import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/utils/screen_size.dart';

import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_text.dart';
import '../../../../elements/custom_text_field.dart';
import '../../ads_managment/widgets/add_creatd_list_model.dart';
import '../widgets/manage_user.dart';

class ManageUserBody extends StatefulWidget {
  const ManageUserBody({Key? key}) : super(key: key);

  @override
  State<ManageUserBody> createState() => _ManageUserBodyState();
}

class _ManageUserBodyState extends State<ManageUserBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextField(
            isTitle: true,
            fieldName: 'search_user'.tr(),
            isHintText: true,
            hintText: 'search_by_name_username_email'.tr(),
            isFilled: true,
            textInputType: TextInputType.text,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'top_users'.tr(), fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kTextFieldFontColor, fontFamily: 'Roboto',),
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
                      text: 'member'.tr(),
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                    ),
                    CustomText(
                      text: 'password'.tr(),
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                    ),
                    CustomText(
                      text: 'tracking'.tr(),
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return UserManagmentModel(name: 'Waleed', userName: '@waleed', member: 'Premium', );
              },),
          )

        ],
      ),
    );
  }
}
