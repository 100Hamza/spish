
class CommentData
{
  String? commentTitle, commentUserName, likes, replies, repliedToName, repliedToUserName, repliedToLikesCount;
  bool isCommented;

  CommentData({this.commentTitle, this.commentUserName, this.likes ,this.replies , this.repliedToName , this.repliedToUserName , this.repliedToLikesCount , this.isCommented = false});
}

List<CommentData> commentDataList = [
  CommentData(commentTitle: 'Muhammad' , commentUserName: '@muhammad' , isCommented: true, likes: '03' , replies: '01', repliedToName: 'Hamza', repliedToUserName: '@hamza', repliedToLikesCount: '05'),
  CommentData(commentTitle: 'Ikram' , commentUserName: '@ikram' , likes: '03' , replies: '06', repliedToName: 'Muhammad', repliedToUserName: '@muhammad', repliedToLikesCount: '03'),
  CommentData(commentTitle: 'Hassan' , commentUserName: '@hassan' , isCommented: true, likes: '03' , replies: '01', repliedToName: 'Ikram', repliedToUserName: '@ikram', repliedToLikesCount: '09'),
  CommentData(commentTitle: 'Ali' , commentUserName: '@ali' , isCommented: true, likes: '06' , replies: '01', repliedToName: 'Hassan', repliedToUserName: '@hassan', repliedToLikesCount: '08'),
  CommentData(commentTitle: 'Asad' , commentUserName: '@asad' , likes: '03' , replies: '02', repliedToName: 'Ali', repliedToUserName: '@ali', repliedToLikesCount: '01'),
  CommentData(commentTitle: 'Alia' , commentUserName: '@alia' , isCommented: true, likes: '10' , replies: '01', repliedToName: 'Asad', repliedToUserName: '@asad', repliedToLikesCount: '04'),
  CommentData(commentTitle: 'Noor' , commentUserName: '@noor' , likes: '03' , replies: '05', repliedToName: 'Alia', repliedToUserName: '@alia', repliedToLikesCount: '02'),
];