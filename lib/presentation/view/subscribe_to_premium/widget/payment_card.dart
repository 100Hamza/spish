import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/ui_config/front_end_config.dart';

import '../../../elements/custom_text.dart';
import '../../../elements/custome_gradient_text.dart';

class PaymentCard extends StatelessWidget {
  double? height , width;
  Color? color , fontColor;
  String? amount , month;

  PaymentCard({this.height , this.width ,this.color, this.amount , this.fontColor , this.month});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomText(
            text: '$month',
            fontSize: 32,
            fontWeight: FontWeight.w700,
            textColor: FrontEndConfig.kSubscribeAmountColor,
            fontFamily: 'Roboto',
          ),
          CustomText(
            text: 'months'.tr(),
            fontSize: 16,
            fontWeight: FontWeight.w700,
            textColor: fontColor,
            fontFamily: 'Roboto',
          ),
          CustomGradientText(
            text: '\$ ${amount}/yr',
            fontSize: 16,
            fontWeight: FontWeight.w700,
            textColor: Colors.white,
            fontFamily: 'Roboto',)
        ],
      ),
    );
  }
}
