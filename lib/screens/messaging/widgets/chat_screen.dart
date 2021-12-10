import 'package:the_plug/screens/messaging/widgets/add_message_widget.dart';
import 'package:the_plug/screens/messaging/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 25,
        elevation: 0,
        title: Row(
          children: [
            const CircleAvatar(),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Reuben Jefwa',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Laundry',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(reverse: true, children: const [
              ChatBubble(isMe: true),
              ChatBubble(isMe: false),
              ChatBubble(isMe: false),
              ChatBubble(isMe: true),
              ChatBubble(isMe: false),
              ChatBubble(isMe: true),
              ChatBubble(isMe: true),
              ChatBubble(isMe: true),
              ChatBubble(isMe: false),
              ChatBubble(isMe: false),
              ChatBubble(isMe: true),
              ChatBubble(isMe: true),
              ChatBubble(isMe: false),
              ChatBubble(isMe: true),
            ]),
          ),
          const AddMessageWidget(),
        ],
      ),
    );
  }
}
