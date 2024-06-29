import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'message_bubble.dart';

class MessagesStream extends StatelessWidget {
  const MessagesStream({
    super.key,
    required this.fsInstance,
    required this.loggedInUser,
  });

  final FirebaseFirestore fsInstance;
  final User loggedInUser;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: fsInstance.collection('messages').snapshots(),
      builder: (context, snapshot) {
        if(!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }
        final messages = snapshot.data?.docs;
        //sort the messages based on the timestamp
        messages?.sort((a, b) => (b.get('timestamp') as Timestamp)
            .compareTo(a.get('timestamp') as Timestamp));
        List<MessageBubble> messageWidgets = [];
        for (var message in messages!) {
          final messageText = message.get('text');
          final messageSender = message.get('sender');
          final messageTime = message.get('timestamp') as Timestamp;
          final currentUser = loggedInUser.email;
          final messageBubble = MessageBubble(
            messageText: messageText,
            messageSender: messageSender,
            timestamp: messageTime,
            isMe: currentUser == messageSender,
          );
          messageWidgets.add(messageBubble);
        }
        return Expanded(
            child: ListView(
              reverse: true,
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              children: messageWidgets,
            )
        );
      },
    );
  }
}
