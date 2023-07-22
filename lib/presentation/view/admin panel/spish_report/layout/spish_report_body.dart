import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../navigation_helper/navigation_helper.dart';
import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../utils/screen_size.dart';
import '../../../add_report/layout/widgets/dropdown.dart';
import '../../../add_report/widgets/image_source_dialog.dart';
import '../../../subscribe_to_premium/widget/gridient_outlined_button.dart';
import '../../spish_report_bord/spish_report_board_view.dart';

class SpishReportBody extends StatefulWidget {
  const SpishReportBody({Key? key}) : super(key: key);

  @override
  State<SpishReportBody> createState() => _SpishReportBodyState();
}

class _SpishReportBodyState extends State<SpishReportBody> {

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
    return  SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomText(
                  text: 'spish_report'.tr(),
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  textColor: FrontEndConfig.kCommentTitleTextColor,
                ),
              ),
              SizedBox(
                height: ScreenSize().height(context, 0.01),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomText(
                  text: 'report_image'.tr(),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  textColor: FrontEndConfig.kCommentTitleTextColor,
                ),
              ),
              SizedBox(
                height: ScreenSize().height(context, 0.007),
              ),
              SizedBox(
                height: ScreenSize().height(context, 0.02),
              ),
              Container(
                height: ScreenSize().height(context, 0.19),
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DottedBorder(
                    strokeCap: StrokeCap.butt,
                    borderType: BorderType.RRect,
                    strokeWidth: 3,
                    dashPattern: [5, 10],
                    radius: const Radius.circular(10),
                    padding: const EdgeInsets.all(2),
                    color: FrontEndConfig.kGrayTextColor,
                    child: InkWell(
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
                        width: ScreenSize().width(context, 1),
                        decoration: BoxDecoration(
                          color: FrontEndConfig.kSubscribeCardColor,
                          borderRadius: BorderRadius.circular(10),
                          image: _imageFile == null
                              ? null
                              : DecorationImage(
                            image: FileImage(File(_imageFile!.path)),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                          : Container(
                        width: ScreenSize().width(context, 1),
                        decoration: BoxDecoration(
                            color: FrontEndConfig.kSubscribeCardColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomText(
                              text: 'drag_and_drop'.tr(),
                              fontSize: 12,
                              fontWeight: FontWeight.w200,
                              fontFamily: 'Roboto',
                              textColor: FrontEndConfig.kGrayTextColor,
                            ),
                            CustomText(
                              text: 'or'.tr(),
                              fontSize: 12,
                              fontWeight: FontWeight.w200,
                              fontFamily: 'Roboto',
                              textColor: FrontEndConfig.kGrayTextColor,
                            ),
                            Column(
                              children: [
                                CustomText(
                                  text: 'choose_image'.tr(),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto',
                                  textColor: FrontEndConfig.kFabColors,
                                ),
                                Container(
                                  width: ScreenSize().width(context, 0.25),
                                  height:
                                  ScreenSize().height(context, 0.002),
                                  color: FrontEndConfig.kFabColors,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenSize().height(context, 0.02),
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      isTitle: true,
                      fieldName: 'name'.tr(),
                      isHintText: true,
                      hintText: 'Reporter Name',
                      isFilled: true,
                      textInputType: TextInputType.text,
                    ),
                  ),
                  Expanded(
                    child: CustomDropDown(dropDownTitle: 'report_category'.tr(),),
                  ),
                ],
              ),
              CustomTextField(
                isTitle: true,
                fieldName: 'location'.tr(),
                isHintText: true,
                hintText: 'los_angeles'.tr(),
                isFilled: true,
                textInputType: TextInputType.text,
              ),
              CustomTextField(
                isTitle: true,
                fieldName: 'more'.tr(),
                isHintText: false,
                isFilled: true,
                textInputType: TextInputType.text,
              ),

              CustomTextField(
                isTitle: true,
                isHintText: true,
                isFilled: true,
                maxLines: 5,
                height: .14,
                textInputType: TextInputType.multiline,
                fieldName: 'description'.tr(),
                hintText: 'write_something_about'.tr(),
              ),
              Container(
                alignment: Alignment.center,
                child: CustomButton(
                  onPress: (){
                    NavigationHelper.pushRoute(context, const SpishReportBoardView());
                  },
                  text: 'post_new_ad'.tr(), fontColor: Colors.white, width: 0.39, shadowColor: FrontEndConfig.kGradientButtonShadowColor, fontWeight: FontWeight.w300, fontSize: 14, isIcon: false),
              )

            ],
          ),
        ),
      ),
    );
  }
}
