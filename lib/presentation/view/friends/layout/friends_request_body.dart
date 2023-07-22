import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/models/requests_and_suggestions_model.dart';
import 'package:spish/presentation/view/feeds/widgets/search_textfield.dart';
import 'package:spish/presentation/view/friends/widgets/friends_requests_list_cards.dart';
import 'package:spish/ui_config/front_end_config.dart';


import '../../../elements/custom_text.dart';

class FriendsRequestBody extends StatefulWidget {
  const FriendsRequestBody({Key? key}) : super(key: key);

  @override
  State<FriendsRequestBody> createState() => _FriendsRequestBodyState();
}

class _FriendsRequestBodyState extends State<FriendsRequestBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 10),
            child: SearchTextField(filledColor: FrontEndConfig.kSubscribeCardColor ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20 , top: 15.0 ),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 20,
                width: MediaQuery.of(context).size.width,
                child:  CustomText(
                  text: 'friend_request'.tr(),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  textColor: FrontEndConfig.kGrayTextColor,
                  fontFamily: 'Roboto',
                ),),
            ),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: friendsRequestList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return RequestsListCard(bgColor:  FrontEndConfig.kTextFieldFontColor,firstButtonTitle: 'accept'.tr(), userName: friendsRequestList[index].userName,requestSenderName: friendsRequestList[index].requestSenderName , skills: friendsRequestList[index].skills,);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20 , top: 15.0 ),
            child: Container(
              alignment: Alignment.centerLeft,
              height: 20,
              width: MediaQuery.of(context).size.width,
              child:  CustomText(
                text: 'suggestions'.tr(),
                fontSize: 12,
                fontWeight: FontWeight.w700,
                textColor: FrontEndConfig.kGrayTextColor,
                fontFamily: 'Roboto',
              ),),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: suggestionsList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return RequestsListCard(bgColor:  FrontEndConfig.kTextFieldFontColor,isSecondButton: false, width: .2 ,mainAxisAlignment: MainAxisAlignment.end, firstButtonTitle: 'send_request'.tr(), userName: friendsRequestList[index].userName,requestSenderName: friendsRequestList[index].requestSenderName , skills: friendsRequestList[index].skills,);
            },
          ),

        ],
      ),
    );
  }
}
