import 'package:flutter/material.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/ui_config/front_end_config.dart';




class SearchTextField extends StatelessWidget {
  TextEditingController? controller;
  TextAlign textAlign;
  Color? filledColor;

  SearchTextField(
      {
        this.textAlign = TextAlign.start,
        this.controller,
        this.filledColor
        // this.fontWeight,
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize().height(context, 0.05),
      child: TextField(
        textAlign: textAlign,
        textCapitalization: TextCapitalization.sentences,
        keyboardType: TextInputType.text,
        controller: controller,
        style: TextStyle(
          color: FrontEndConfig.kTextFieldFontColor,
          fontSize: 16,
          // fontWeight: fontWeight,
        ),
        cursorColor: FrontEndConfig.kSearchIconColor,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search , color: FrontEndConfig.kSearchIconColor,),
            hintText: 'Search Filter',
            hintStyle: TextStyle(color: FrontEndConfig.kSearchIconColor),
            contentPadding: const EdgeInsets.symmetric(vertical: 3 , horizontal: 1),
            filled: true,
            fillColor: filledColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5), // Set the border radius
              borderSide: BorderSide.none, // Remove the border
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide:
              BorderSide(width: 2, color: FrontEndConfig.kDarkBgColor),
            )
        ),
      ),
    );
  }
}
