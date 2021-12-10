import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({Key? key, @required this.isMe}) : super(key: key);
  final bool? isMe;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment:
          isMe! ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: size.width * 0.8),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          decoration: BoxDecoration(
              color: isMe! ? Colors.black : Colors.grey,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              )),
          child: const Text(
            'Hello there this is a test message',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
