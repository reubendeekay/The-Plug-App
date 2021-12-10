import 'package:the_plug/helpers/constants.dart';
import 'package:the_plug/screens/messaging/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class MessagingScreen extends StatelessWidget {
  const MessagingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            color: kPrimaryColor,
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    children: const [
                      Text(
                        'Your Messages',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: List.generate(10, (index) => const ChatTile()),
            ),
          ),
        ],
      ),
    );
  }
}
