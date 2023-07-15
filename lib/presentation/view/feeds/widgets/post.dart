import 'package:flutter/material.dart';
import 'package:spish/presentation/view/feeds/widgets/reactions_on_post.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_text.dart';
import '../../../utils/screen_size.dart';


class Post extends StatefulWidget {
  String? commentTitle, commentUserName,comments, likes, dislikes, share, hours;
  bool isImage;
  Post({this.commentTitle, this.commentUserName,this.comments, this.likes ,this.dislikes , this.share ,this.isImage = false ,this.hours});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0 , left: 10, right: 10),
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: FrontEndConfig.kDarkBgColor,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25, // Set the radius of the circular avatar
                  backgroundColor: FrontEndConfig.kSubscribeCardColor,// Set the background image
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: widget.commentTitle,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              textColor: FrontEndConfig.kCommentTitleTextColor,
                              fontFamily: 'Roboto',
                            ),
                            SizedBox(width: ScreenSize().width(context, 0.03),),
                            CustomText(
                              text: widget.commentUserName,
                              fontSize: 9,
                              fontWeight: FontWeight.w300,
                              textColor: FrontEndConfig.kCommentTitleTextColor,
                              fontFamily: 'Roboto',
                            ),
                            SizedBox(width: ScreenSize().width(context, 0.012),),
                            CustomText(
                              text: widget.hours,
                              fontSize: 9,
                              fontWeight: FontWeight.w300,
                              textColor: FrontEndConfig.kCommentTitleTextColor,
                              fontFamily: 'Roboto',
                            ),
                          ],
                        ),
                        SizedBox( height: ScreenSize().height(context, 0.005)),
                        CustomText(
                          text: 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed ad incidunt, nihil possimus minima aliquam sapiente nisi, suscipit sequi quae sunt laboriosam illo ab dolor. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sed ad incidunt',
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          textColor: FrontEndConfig.kCommentTitleTextColor,
                          fontFamily: 'Roboto',
                        ),
                        SizedBox( height: ScreenSize().height(context, 0.009)),
                        (widget.isImage == true)? Container(
                          height: ScreenSize().height(context, 0.17),
                          width: ScreenSize().width(context, 0.8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: FrontEndConfig.kSubscribeCardColor,
                            image: const DecorationImage(image: AssetImage('assets/images/image.png'), fit: BoxFit.fill),
                          ),
                        ) : Container(),
                        SizedBox( height: ScreenSize().height(context, 0.009)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ReactionsOnPost(icon: Icons.comment_rounded, count: widget.comments,),
                            ReactionsOnPost(icon: Icons.thumb_up_rounded, count: widget.likes,),
                            ReactionsOnPost(icon: Icons.thumb_down_rounded, count: widget.dislikes,),
                            ReactionsOnPost(icon: Icons.reply_rounded, count: widget.share, isRotated: true) ,
                          ],

                        ),

                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: ScreenSize().height(context, 0.003),
            decoration: BoxDecoration(
                color: FrontEndConfig.kReactionsIconsColor
            ),
          ),
        ),
      ],
    );
  }
}
