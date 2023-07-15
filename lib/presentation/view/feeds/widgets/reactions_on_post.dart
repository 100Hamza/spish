import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_text.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/ui_config/front_end_config.dart';



class ReactionsOnPost extends StatelessWidget {
  IconData? icon;
  int? count;
  bool isRotated , isLike , isText; // to enable the rotated icon. I've rotate the
  double size;
  VoidCallback? onPress;
  ReactionsOnPost({this.icon, this.count, this.isRotated = false , this.size = 20 , this.onPress , this.isLike = false , this.isText = false});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        isRotated == false? InkWell(onTap: onPress,child: Icon(icon , color: isLike? FrontEndConfig.kFabColors: FrontEndConfig.kReactionsIconsColor ,size: size,)) :   Transform(
    transform: Matrix4.identity()..scale(-1.0, 1.0),
    alignment: Alignment.center,
    child: InkWell(onTap: onPress,child: Icon(icon , color: isLike? FrontEndConfig.kFabColors: FrontEndConfig.kReactionsIconsColor ,))),
        SizedBox(width: ScreenSize().width(context, 0.01),),
        !isText? CustomText(
          text: isLike? (count!+0).toString() : (count!-1).toString(),
          fontSize: 12,
          fontWeight: FontWeight.w300,
          textColor: FrontEndConfig.kCommentTitleTextColor,
          fontFamily: 'Roboto',
        ): Container(),
      ],
    );
  }
}
