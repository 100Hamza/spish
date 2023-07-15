import 'package:flutter/material.dart';
import 'package:spish/presentation/elements/custom_appbar.dart';

import 'package:spish/presentation/elements/news_feed_search.dart';

import 'package:spish/presentation/models/post_data.dart';
import 'package:spish/presentation/utils/screen_size.dart';
import 'package:spish/presentation/view/feeds/widgets/create_post.dart';
import 'package:spish/presentation/view/feeds/widgets/create_post_divider.dart';
import 'package:spish/presentation/view/feeds/widgets/post.dart';


class FeedBody extends StatefulWidget {
  bool isSearch, isPost ;
  bool isAppBar;
  FeedBody({this.isSearch = false, this.isPost = false , this.isAppBar = true});

  @override
  State<FeedBody> createState() => _FeedBodyState();
}

class _FeedBodyState extends State<FeedBody> {
  bool isCommented = true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        // height: ScreenSize().height(context, 0.86),
        child: Column(
          children: [

            widget.isAppBar? const CustomAppBar() : Container(),
            widget.isSearch == true ? NewsFeedSearch(title: 'News feed' ,isIcon: false,) : Container(),
            widget.isPost ? const CreatePost() : Container(),
            widget.isPost ? const CreatePostDivider() : Container(),
            Expanded(
              child: ListView.builder(
                itemCount: postDataList.length,
                itemBuilder: (context, index) {
                  return Post(
                    commentTitle: postDataList[index].commentTitle,
                    commentUserName: postDataList[index].commentUserName,
                    isImage: postDataList[index].isImage,
                    likes: postDataList[index].likes,
                    dislikes: postDataList[index].dislikes,
                    comments: postDataList[index].comments,
                    share: postDataList[index].share,
                    hours: postDataList[index].hours,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
