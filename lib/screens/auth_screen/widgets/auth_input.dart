import 'package:flutter/material.dart';

class AuthInput extends StatelessWidget {
  const AuthInput({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.orange[50],
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              border: InputBorder.none,
              hintText: title ?? 'Email')),
    );
  }
}
