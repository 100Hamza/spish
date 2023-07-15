import 'package:flutter/material.dart';
import 'package:spish/presentation/utils/screen_size.dart';

import '../../../../ui_config/front_end_config.dart';

class OTPTextField extends StatelessWidget {

  TextEditingController? controller;
  int maxLines;
  // FontWeight? fontWeight;
  bool isPass;
  int? maxlength;
  String? fieldName;
  TextInputType? textInputType;
  TextAlign textAlign;

  OTPTextField(
      {
        this.textAlign = TextAlign.start,
        this.maxlength,
        this.controller,
        this.maxLines = 1,
        // this.fontWeight,
        this.textInputType,
        this.fieldName,
        this.isPass = false
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: ScreenSize().height(context, 0.05),
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
              counterText: '',
              contentPadding: EdgeInsets.symmetric(vertical: 5 , horizontal: 10),
              filled: true,
              fillColor: FrontEndConfig.kTextFieldFilledColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5), // Set the border radius
                borderSide: BorderSide.none, // Remove the border
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide:
                BorderSide(width: 2, color: FrontEndConfig.kFocusedBorderColor),
              )
          ),
        ),
      ),
    );
  }
}
