import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_text.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/ui_config/front_end_config.dart';



class ReactionsOnPost extends StatelessWidget {
  IconData? icon;
  String? count;
  bool isRotated; // to enable the rotated icon. I've rotate the
  double size;
  ReactionsOnPost({this.icon, this.count, this.isRotated = false , this.size = 20});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        isRotated == false? Icon(icon , color: FrontEndConfig.kReactionsIconsColor ,size: size,) :   Transform(
    transform: Matrix4.identity()..scale(-1.0, 1.0),
    alignment: Alignment.center,
    child: Icon(icon , color: FrontEndConfig.kReactionsIconsColor,)),
        SizedBox(width: ScreenSize().width(context, 0.01),),
        CustomText(
          text: count.toString(),
          fontSize: 12,
          fontWeight: FontWeight.w300,
          textColor: FrontEndConfig.kCommentTitleTextColor,
          fontFamily: 'Roboto',
        ),
      ],
    );
  }
}
