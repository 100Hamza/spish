import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/view/feeds/widgets/search_textfield.dart';

import '../../../../ui_config/front_end_config.dart';

import '../../../models/requests_and_suggestions_model.dart';
import '../widgets/friends_requests_list_cards.dart';

class AddedFriendsBody extends StatefulWidget {
  const AddedFriendsBody({Key? key}) : super(key: key);

  @override
  State<AddedFriendsBody> createState() => _AddedFriendsBodyState();
}

class _AddedFriendsBodyState extends State<AddedFriendsBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 10),
          child: SearchTextField(filledColor: FrontEndConfig.kSubscribeCardColor),
        ),

        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: suggestionsList.length,
            itemBuilder: (context, index) {
              return RequestsListCard(bgColor:  FrontEndConfig.kGrayTextColor,isGradient: false, fontColor: FrontEndConfig.kUnFriendTextColor,isSecondButton: false, width: .2 ,mainAxisAlignment: MainAxisAlignment.end, firstButtonTitle: 'send_request'.tr(), userName: friendsRequestList[index].userName,requestSenderName: friendsRequestList[index].requestSenderName , skills: friendsRequestList[index].skills,);
            },
          ),
        ),

      ],
    );
  }
}
