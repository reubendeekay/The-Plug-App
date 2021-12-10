import 'package:flutter/material.dart';

class AddMessageWidget extends StatelessWidget {
  const AddMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const TextField(
        decoration: InputDecoration(
            hintText: 'Write your message',
            prefixIcon: Icon(
              Icons.camera,
              color: Colors.grey,
            ),
            suffixIcon: Icon(
              Icons.send,
              color: Colors.grey,
            )),
      ),
    );
  }
}
