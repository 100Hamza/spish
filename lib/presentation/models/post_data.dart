
class PostData
{
  String? commentTitle, commentUserName,comments, likes, dislikes, share , hours;
  bool isImage;
  PostData({this.commentTitle, this.commentUserName,this.comments, this.likes ,this.dislikes , this.share ,this.isImage = false , this.hours});

}

List<PostData> postDataList = [
  PostData(commentTitle: 'Muhammad' , commentUserName: '@muhammad' , isImage: true, likes: '1' , dislikes: '2', comments: '3', share: '4',hours: '9h'),
  PostData(commentTitle: 'Ikram' , commentUserName: '@ikram' , likes: '2' , dislikes: '3', comments: '4', share: '5', hours: '2h'),
  PostData(commentTitle: 'Hassan' , commentUserName: '@hassan' , isImage: true, likes: '3' , dislikes: '4', comments: '5', share: '6', hours: '20mint'),
  PostData(commentTitle: 'Ali' , commentUserName: '@ali' , isImage: true, likes: '4' , dislikes: '5', comments: '6', share: '7', hours: '12h'),
  PostData(commentTitle: 'Asad' , commentUserName: '@asad' , likes: '5' , dislikes: '6', comments: '7', share: '8', hours: '1h'),
  PostData(commentTitle: 'Alia' , commentUserName: '@alia' , isImage: true, likes: '6' , dislikes: '7', comments: '8', share: '9', hours: '3h'),
  PostData(commentTitle: 'Noor' , commentUserName: '@noor' , likes: '7' , dislikes: '8', comments: '9', share: '10', hours: '4h'),
];