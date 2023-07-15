import 'package:flutter/material.dart';
import 'package:spish/presentation/view/create_post/layout/create_post_body.dart';
import 'package:spish/ui_config/front_end_config.dart';

class CreatePostView extends StatelessWidget {
  const CreatePostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: FrontEndConfig.kDarkBgColor,
      body: const CreatePostBody(),
    );
  }
}
