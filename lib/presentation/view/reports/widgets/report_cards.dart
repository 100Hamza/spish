import 'package:flutter/material.dart';
import 'package:spish/presentation/view/feeds/widgets/gradient_icon.dart';

import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_text.dart';

import '../../../utils/screen_size.dart';

class PostCards extends StatelessWidget {
  String? name, address, image;
  VoidCallback? onPress;

  PostCards({this.name, this.address,this.image , this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress ,
      child: Material(
        color: FrontEndConfig.kSubscribeCardColor,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          // Increase the width here
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: FrontEndConfig.kSubscribeCardColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: ScreenSize().height(context, 0.2),
                width: ScreenSize().width(context, 0.4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: FrontEndConfig.kSubscribeCardColor,
                  image: DecorationImage(
                    image: AssetImage(image.toString()),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: ScreenSize().height(context, 0.005),),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: name.toString(),
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        textColor: FrontEndConfig.kCommentTitleTextColor,
                        fontFamily: 'Roboto',
                      ),
                      SizedBox(height: ScreenSize().height(context, 0.002),),
                      CustomText(
                        text: address.toString(),
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        textColor: FrontEndConfig.kCommentTitleTextColor,
                        fontFamily: 'Roboto',
                      ),

                    ],
                  ),
                  GradientIcon(icon: Icons.report_gmailerrorred, iconSize: 16,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
