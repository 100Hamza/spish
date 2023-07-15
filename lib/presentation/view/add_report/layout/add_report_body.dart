import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_appbar.dart';
import 'package:spish/presentation/view/add_report/layout/widgets/dropdown.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../../../ui_config/front_end_config.dart';
import '../../../elements/custom_button.dart';
import '../../../elements/custom_text.dart';
import '../../../elements/custom_text_field.dart';
import '../../../utils/screen_size.dart';
import '../widgets/image_source_dialog.dart';

class AddReportBody extends StatefulWidget {
  const AddReportBody({Key? key}) : super(key: key);

  @override
  State<AddReportBody> createState() => _AddReportBodyState();
}
TextEditingController _firstName = TextEditingController();
class _AddReportBodyState extends State<AddReportBody> {


  XFile? _imageFile;

  Future getImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);
    setState(() {
      if (pickedImage != null) {
        _imageFile = XFile(pickedImage.path);
      } else {
        print('No Image selected');
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    List<String> suggestons = ["USA", "UK", "Uganda", "Uruguay", "United Arab Emirates"];
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            Padding(
              padding: const EdgeInsets.only(top: 5.0 , left: 5, right: 5),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF39FF14).withOpacity(0.7),
                        const Color(0xFFFC0082).withOpacity(0.5),
                        const Color(0xFFFC0082).withOpacity(0.7),
                      ],
                      stops: [0.0, 0.8, 1.0],
                    ),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight:  Radius.circular(10))
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: FrontEndConfig.kSubscribeCardColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight:  Radius.circular(10))
                  ),
                  height: ScreenSize().height(context, 0.853),
                  width: double.infinity,
                  child: Column(children: [
                    SizedBox(height: ScreenSize().height(context, 0.01),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: 'Report something',
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          textColor: FrontEndConfig.kLightGrayTextColor,
                          fontFamily: 'Roboto',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenSize().height(context, 0.01),),

                    InkWell(
                      onTap: () {
                        showImageSourceDialog(context, onCameraPress: () {
                          getImage(ImageSource.camera);
                          Navigator.pop(context);
                        }, onGalleryPress: () {
                          getImage(ImageSource.gallery);
                          Navigator.pop(context);
                        });
                      },
                      child: _imageFile != null
                          ? Container(
                        alignment: Alignment.center,
                        height: ScreenSize().height(context, 0.3),
                        width: ScreenSize().width(context, 0.6),
                        decoration: BoxDecoration(
                          image: _imageFile == null
                              ? null
                              : DecorationImage(
                            image: FileImage(File(_imageFile!.path)),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                          :  Container(
                        alignment: Alignment.center,
                        color: FrontEndConfig.kDarkBgColor,
                        height: ScreenSize().height(context, 0.3),
                        width: ScreenSize().width(context, 0.6),
                        child: Icon(Icons.image_outlined , size: 70, color: FrontEndConfig.kSubscribeCardColor,),
                      ),
                    ),

                    SizedBox(height: ScreenSize().height(context, 0.02),),
                    SizedBox(
                      width: ScreenSize().width(context, 1),
                      child: CustomTextField(textInputType: TextInputType.name , controller: _firstName, fieldName: 'name'.tr(),),
                    ),
                  Row(
                    children: [
                       Expanded(
                        child: CustomDropDown()
                      ),
                      Expanded(
                        child: SizedBox(
                          width: ScreenSize().width(context, 1),
                          // child: CustomTextField(textInputType: TextInputType.name , controller: _firstName, fieldName: 'Location'.tr(),),
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(text: "Location", fontSize: 10, fontWeight: FontWeight.w300, textColor: FrontEndConfig.kTextFieldFontColor, fontFamily: 'Roboto',),
                                  SizedBox(height: 5,),
                                  Container(
                                    height: ScreenSize().height(context,0.05),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4), // Set the border radius to make it round

                                    ),

                                    child: Autocomplete(
                                      optionsBuilder: (TextEditingValue textEditingValue) {
                                        if (textEditingValue.text == '') {
                                          return const Iterable<String>.empty();
                                        }else{
                                          List<String> matches = <String>[];
                                          matches.addAll(suggestons);

                                          matches.retainWhere((s){
                                            return s.toLowerCase().contains(textEditingValue.text.toLowerCase());
                                          });
                                          return matches;
                                        }
                                      },
                                      fieldViewBuilder: (BuildContext context, TextEditingController textEditingController, FocusNode focusNode, VoidCallback onFieldSubmitted) {
                                        return TextFormField(

                                            controller: textEditingController,
                                            focusNode: focusNode,
                                          cursorHeight: 20,
                                          style: TextStyle(
                                            color: FrontEndConfig.kTextFieldFontColor,
                                            fontSize: 16,
                                            // fontWeight: fontWeight,
                                          ),
                                          cursorColor: FrontEndConfig.kTextFieldFontColor,
                                            decoration: InputDecoration(
                                              focusColor: FrontEndConfig.borderColor,
                                              fillColor: FrontEndConfig.kTextFieldFilledColor,
                                            filled: true,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5), // Set the border radius
                                                borderSide: BorderSide.none, // Remove the border
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5),
                                                borderSide: BorderSide(color: FrontEndConfig.kFocusedBorderColor, width: 2),
                                              ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5),
                                              borderSide:
                                              BorderSide(width: 4, color: FrontEndConfig.kFocusedBorderColor),
                                            ), // Remove the default border
                                              contentPadding: EdgeInsets.symmetric(vertical: 5 , horizontal: 10),
                                        ),);
                                      },
                                      onSelected: (String selection) {
                                        print('You just selected $selection');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),

                        ),
                      ),
                    ],
                  ),

                    CustomTextField(
                      isTitle: true,
                      isHintText: false,
                      isFilled: true,
                      maxLines: 5,
                      height: .15,
                      textInputType: TextInputType.multiline,
                      fieldName: 'Details',
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0 , right: 10 , bottom: 10,),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        child: CustomButton(
                          onPress: (){
                            // NavigationHelper.pushRoute(context, const AccountVerifiedView());
                          },
                          text: 'Publish report', fontColor: Colors.white, width: 0.39, isIcon: false, shadowColor: FrontEndConfig.kGradientButtonShadowColor, fontWeight: FontWeight.w600, fontSize: 16,),
                      ),



                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
