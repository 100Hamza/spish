import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spish/presentation/utils/screen_size.dart';

import '../../ui_config/front_end_config.dart';
import 'custom_text.dart';


class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  int maxLines;
  // FontWeight? fontWeight;
  bool isPass , isTitle , isHintText , isFilled;
  int? maxlength;
  String? fieldName;
  TextInputType? textInputType;
  TextAlign textAlign;
  double height;
  String hintText;



  CustomTextField(
      {
        this.textAlign = TextAlign.start,
        this.maxlength,
        this.controller,
        this.maxLines = 1,
        // this.fontWeight,
        this.textInputType,
        this.fieldName,
        this.isPass = false,
        this.isTitle = true,
        this.isHintText = false,
        this.isFilled = true,
        this.height = 0.05,
        this.hintText = 'What is Happening?'
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isTitle ? CustomText(text: fieldName.toString(), fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kTextFieldFontColor, fontFamily: 'Roboto',) : Container(),
          SizedBox(height: 5,),
          Container(
            height: ScreenSize().height(context,height),
            child: TextField(
              textAlign: textAlign,
              obscureText: isPass,
              textCapitalization: TextCapitalization.sentences,
              keyboardType: textInputType,
              maxLength: maxlength,
              controller: controller,
              style: TextStyle(
                color: FrontEndConfig.kTextFieldFontColor,
                fontSize: 16,
                // fontWeight: fontWeight,
              ),
              maxLines: maxLines,
              cursorColor: FrontEndConfig.kTextFieldFontColor,
              decoration: InputDecoration(
                hintText: isHintText? hintText: '',
                  hintStyle: TextStyle(color: FrontEndConfig.kGrayTextColor , fontSize: 12 , fontFamily: 'Roboto'),
                  counterText: '',
                contentPadding: EdgeInsets.symmetric(vertical: 5 , horizontal: 10),
                filled: isFilled,
                fillColor: FrontEndConfig.kTextFieldFilledColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5), // Set the border radius
                    borderSide: BorderSide.none, // Remove the border
                  ),
                focusedBorder: isFilled? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                  BorderSide(width: 2, color: FrontEndConfig.kFocusedBorderColor),
                ) : OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
