import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../ui_config/front_end_config.dart';


Future showImageSourceDialog(BuildContext context,
    {required VoidCallback onCameraPress, onGalleryPress}) async {
  showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          actions: [
            TextButton(
              onPressed: onCameraPress,
              child: Icon(
                Icons.camera_alt,
                size: 50,
                color: FrontEndConfig.kLightPink,
              ),
            ),
            TextButton(
                onPressed: onGalleryPress,
                child: Icon(Icons.image,
                    size: 50, color: FrontEndConfig.kLightPink))
          ],
        );
      });
}
