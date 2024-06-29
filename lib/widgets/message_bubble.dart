import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    super.key,
    required this.messageText,
    required this.messageSender,
    required this.timestamp,
    required this.isMe,
  });

  final String messageText;
  final String messageSender;
  final Timestamp timestamp;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Text(messageSender, style: const TextStyle(fontSize: 12.0, color: Colors.black54,),),
          Material(
            borderRadius: BorderRadiusDirectional.only(
              topStart: !isMe ? const Radius.circular(30.0) : const Radius.circular(0.0),
              topEnd: isMe ? const Radius.circular(30.0) : const Radius.circular(0.0),
              bottomStart: const Radius.circular(30.0),
              bottomEnd: const Radius.circular(30.0),
            ),
            borderOnForeground: true,
            elevation: 5.0,
            color: isMe ? Colors.blue : Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0,),
              child: Text(
                  messageText,
                  style: TextStyle(
                    fontSize: 15,
                    color: isMe ? Colors.white : Colors.black87,
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}