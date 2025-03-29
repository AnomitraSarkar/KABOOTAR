import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String senderID;
  final String sendEmail;
  final String receiverID;
  final String message;
  final Timestamp timestamp;

  Message({
    required this. senderID,
    required this.sendEmail,
    required this.receiverID,
    required this.message,
    required this.timestamp,
  });

  // convert to a map
  Map <String, dynamic> toMap(){
    return {
      'senderID': senderID,
      'sendEmail': sendEmail,
      'receiverID': receiverID,
      'message': message,
      'timestamp': timestamp,
    };
  }
}
