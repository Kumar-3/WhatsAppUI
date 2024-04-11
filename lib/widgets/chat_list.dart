import 'package:flutter/material.dart';
import 'package:whatsappui/info.dart';
import 'package:whatsappui/widgets/my_message_card.dart';
import 'package:whatsappui/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (context, index) {
              if (messages[index]['isMe'] == true) {
                // Message sent by me
                return MyMessageCard(
                  message: messages[index]['text'].toString(),
                  date: messages[index]['time'].toString(),
                );
              } else {
// Message sent by others
                return SenderMessageCard(
                  message: messages[index]['text'].toString(),
                  date: messages[index]['time'].toString(),
                );
              }
            }));
  }
}
