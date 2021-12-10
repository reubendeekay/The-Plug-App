import 'package:the_plug/screens/auth_screen/widgets/auth_background.dart';
import 'package:the_plug/screens/auth_screen/widgets/auth_foreground.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Stack(
        children: const [
          AuthBackground(),
          AuthForeground(),
        ],
      ),
    );
  }
}
