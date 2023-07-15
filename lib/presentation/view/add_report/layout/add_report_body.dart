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
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 8.0),
                        //   child: InkWell(
                        //     onTap: (){
                        //       Navigator.pop(context);
                        //     },
                        //     child: Container(
                        //       decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         borderRadius: BorderRadius.circular(20),
                        //       ),
                        //       child: Icon(Icons.close , color: FrontEndConfig.kSubscribeCardColor,),
                        //     ),
                        //   ),
                        // ),
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
                      child: CustomTextField(textInputType: TextInputType.name , controller: _firstName, fieldName: 'first_name'.tr(),),
                    ),
                  Row(
                    children: [
                       Expanded(
                        child: CustomDropDown()
                      ),
                      Expanded(
                        child: SizedBox(
                          width: ScreenSize().width(context, 1),
                          child: CustomTextField(textInputType: TextInputType.name , controller: _firstName, fieldName: 'first_name'.tr(),),
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
