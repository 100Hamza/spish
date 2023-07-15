import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../ui_config/front_end_config.dart';
import '../../../../elements/custom_button.dart';
import '../../../../elements/custom_text.dart';
import '../../../../elements/custom_text_field.dart';
import '../../../../utils/screen_size.dart';
import '../../../add_report/widgets/image_source_dialog.dart';
import '../../../subscribe_to_premium/widget/gridient_outlined_button.dart';

class CompDetails extends StatefulWidget {
  const CompDetails({Key? key}) : super(key: key);

  @override
  State<CompDetails> createState() => _CompDetailsState();
}

class _CompDetailsState extends State<CompDetails> {
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
      return Scaffold(
        backgroundColor: FrontEndConfig.kDarkBgColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomText(
                  text: 'Create New Ad',
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  textColor: FrontEndConfig.kCommentTitleTextColor,
                ),
              ),
              SizedBox(
                height: ScreenSize().height(context, 0.007),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomText(
                  text: 'Complete your ads details, to engage with your audience',
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  textColor: FrontEndConfig.kCommentTitleTextColor,
                ),
              ),
              SizedBox(
                height: ScreenSize().height(context, 0.007),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CustomText(
                  text: 'Company Logo',
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  textColor: FrontEndConfig.kCommentTitleTextColor,
                ),
              ),
              SizedBox(
                height: ScreenSize().height(context, 0.02),
              ),
              Container(
                height: ScreenSize().height(context, 0.22),
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
                                    text: 'Drag and Drop your Image here',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Roboto',
                                    textColor: FrontEndConfig.kGrayTextColor,
                                  ),
                                  CustomText(
                                    text: 'Or',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                    fontFamily: 'Roboto',
                                    textColor: FrontEndConfig.kGrayTextColor,
                                  ),
                                  Column(
                                    children: [
                                      CustomText(
                                        text: 'Choose image',
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
              CustomTextField(
                isTitle: true,
                fieldName: 'Company Name',
                isHintText: true,
                hintText: 'Ex: FlutterWave',
                isFilled: true,
                textInputType: TextInputType.text,
              ),
              CustomTextField(
                isTitle: true,
                fieldName: 'Company Location',
                isHintText: true,
                hintText: 'Los Angeles, USA',
                isFilled: true,
                textInputType: TextInputType.text,
              ),
              CustomTextField(
                isTitle: true,
                fieldName: 'Company Website ',
                isHintText: false,
                isFilled: true,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: ScreenSize().height(context, 0.03),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomGradientOutlinedButton(
                      text: 'Go Back',
                      width: 0.39,
                      height: 40,
                      fontSize: 16,
                      onPress: () {
                        // NavigationHelper.pushRoute(context, const Home());
                      },
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: CustomButton(
                        onPress: () {
                          // NavigationHelper.pushRoute(context, const SubscribeToPremiumView());
                        },
                        text: 'Next',
                        fontColor: Colors.white,
                        width: 0.39,
                        isIcon: true,
                        shadowColor: FrontEndConfig.kGradientButtonShadowColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        iconData: Icons.navigate_next,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
  }
}
