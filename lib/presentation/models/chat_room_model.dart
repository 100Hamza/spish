// model for messages
class ChatRoomModel {
  int timeStamp ;
  String message ;
  bool isMe ;
  ChatRoomModel({required this.timeStamp ,required this.message, required this.isMe});
}

List<ChatRoomModel> messagesList = [

  //adding data into model for Today date
  ChatRoomModel(timeStamp: DateTime.now().microsecondsSinceEpoch  , message: 'Hello Today Message and testing long thread for this i hope this will work', isMe: true),
  ChatRoomModel(timeStamp: DateTime.now().microsecondsSinceEpoch  , message: 'Hello Today Message',  isMe: false),
  ChatRoomModel(timeStamp: DateTime.now().microsecondsSinceEpoch  , message: 'Hello Today Message', isMe: true),
  ChatRoomModel(timeStamp: DateTime.now().microsecondsSinceEpoch  , message: 'Hello Today Message', isMe: false),
  ChatRoomModel(timeStamp: DateTime.now().microsecondsSinceEpoch  , message: 'Hello Today Message', isMe: true),
  ChatRoomModel(timeStamp: DateTime.now().microsecondsSinceEpoch  , message: 'Hello Today Message', isMe: false),

  //adding data into model for yesterday date
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-1, 11,30 ).microsecondsSinceEpoch  , message: 'Yesterday Message', isMe: true),
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-1, 11,30 ).microsecondsSinceEpoch  , message: 'Yesterday Message',  isMe: false),
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-1, 11,30 ).microsecondsSinceEpoch  , message: 'Yesterday Message', isMe: true),
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-1, 14,30 ).microsecondsSinceEpoch  , message: 'Yesterday Message',  isMe: false),
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-1, 14,30 ).microsecondsSinceEpoch  , message: 'Yesterday Message',  isMe: true),
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-1, 14,30 ).microsecondsSinceEpoch  , message: 'Yesterday Message',  isMe: false),

  //adding data into model date
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-2, 14,30 ).microsecondsSinceEpoch  , message: 'Some Message',  isMe: true),
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-2, 14,30 ).microsecondsSinceEpoch  , message: 'Some Message',  isMe: false),
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-2, 14,30 ).microsecondsSinceEpoch  , message: 'Some Message',  isMe: true),
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-2, 14,30 ).microsecondsSinceEpoch  , message: 'Some Message',  isMe: false),
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-2, 14,30 ).microsecondsSinceEpoch  , message: 'Some Message',  isMe: true),

  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-3, 14,30 ).microsecondsSinceEpoch  , message: 'Some Message',  isMe: false),
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-3, 14,30 ).microsecondsSinceEpoch  , message: 'Some Message',  isMe: true),
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-3, 14,30 ).microsecondsSinceEpoch  , message: 'Some Message',  isMe: false),
  ChatRoomModel(timeStamp: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day-3, 14,30 ).microsecondsSinceEpoch  , message: 'Some Message',  isMe: true),


  ChatRoomModel(timeStamp: DateTime(2023,02,08, 15,20 ).microsecondsSinceEpoch  , message: 'Feb 8th Message' , isMe: true),
  ChatRoomModel(timeStamp: DateTime(2023,02,08, 15,20 ).microsecondsSinceEpoch  , message: 'Feb 8th Message' , isMe: false),
  ChatRoomModel(timeStamp: DateTime(2023,02,08, 15,20 ).microsecondsSinceEpoch  , message: 'Feb 8th Message' , isMe: true),
  ChatRoomModel(timeStamp: DateTime(2023,01,20, 15,20 ).microsecondsSinceEpoch  , message: '20 JanMessage' , isMe: true),
  ChatRoomModel(timeStamp: DateTime(2023,01,20, 15,20 ).microsecondsSinceEpoch  , message: '20 JanMessage' , isMe: false),
  ChatRoomModel(timeStamp: DateTime(2023,01,20, 15,20 ).microsecondsSinceEpoch  , message: '20 JanMessage' , isMe: true),
  ChatRoomModel(timeStamp: DateTime(2023,01,20, 15,20 ).microsecondsSinceEpoch  , message: '20 JanMessage' , isMe: false),

];