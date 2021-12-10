import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthSocialIcon extends StatelessWidget {
  const AuthSocialIcon({Key? key, @required this.title, @required this.icon})
      : super(key: key);
  final String? title;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          icon ??
              FaIcon(
                FontAwesomeIcons.googlePlus,
                color: Colors.red.shade800,
              ),
          const SizedBox(
            width: 10,
          ),
          Text(title ?? 'Google')
        ],
      ),
    );
  }
}
