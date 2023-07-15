import 'package:flutter/material.dart';
import 'package:spish/navigation_helper/navigation_helper.dart';
import 'package:spish/presentation/view/create_post/layout/create_post_view.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_text.dart';
import '../../../utils/screen_size.dart';
import 'gradient_icon.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: (){
        NavigationHelper.pushRoute(context, CreatePostView());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0 ,vertical: 20),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomText(
                        text: 'Create Post',
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        textColor: FrontEndConfig.kGrayTextColor,
                        fontFamily: 'Roboto',
                      ),
                      SizedBox(width:  ScreenSize().width(context, 0.03),),
                      GradientIcon(icon: Icons.attach_file, iconSize: 16,),
                      SizedBox(width:  ScreenSize().width(context, 0.03),),
                      GradientIcon(icon: Icons.emoji_emotions_outlined, iconSize: 16,),
                    ],
                  ),
                  Icon(Icons.send, color: FrontEndConfig.kCommentTitleTextColor, size: 16,),
                ],
              ),
              SizedBox(height:  ScreenSize().height(context, 0.01),),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage:
                    AssetImage('assets/images/image.png'),
                  ),
                  SizedBox(width:  ScreenSize().width(context, 0.03),),
                  CustomText(
                    text: 'What is Happenings?',
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    textColor: FrontEndConfig.kGrayTextColor,
                    fontFamily: 'Roboto',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
