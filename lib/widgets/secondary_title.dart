import 'package:flutter/material.dart';

class SecondaryTitle extends StatelessWidget {
  const SecondaryTitle({Key? key, @required this.text}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Text(
        text!,
        style: TextStyle(color: Colors.blueGrey[400]),
      ),
    );
  }
}
