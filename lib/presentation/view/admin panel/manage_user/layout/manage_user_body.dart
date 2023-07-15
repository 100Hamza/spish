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
            fieldName: 'Search User',
            isHintText: true,
            hintText: 'Search by name, username, email',
            isFilled: true,
            textInputType: TextInputType.text,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: 'Top Users', fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kTextFieldFontColor, fontFamily: 'Roboto',),
                SizedBox(height: ScreenSize().height(context, 0.02),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Profile Pic',
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                    ),
                    CustomText(
                      text: 'Name',
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                    ),
                    CustomText(
                      text: 'UserName',
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                    ),
                    CustomText(
                      text: 'Member',
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                    ),
                    CustomText(
                      text: 'Password',
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Roboto',
                      textColor: FrontEndConfig.kCommentTitleTextColor,
                    ),
                    CustomText(
                      text: 'Tracking',
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
