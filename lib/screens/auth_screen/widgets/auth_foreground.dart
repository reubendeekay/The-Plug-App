import 'package:the_plug/bottom_nav.dart';
import 'package:the_plug/helpers/constants.dart';
import 'package:the_plug/screens/auth_screen/widgets/auth_input.dart';
import 'package:the_plug/screens/auth_screen/widgets/auth_social_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/route_manager.dart';

class AuthForeground extends StatefulWidget {
  const AuthForeground({Key? key}) : super(key: key);

  @override
  State<AuthForeground> createState() => _AuthForegroundState();
}

class _AuthForegroundState extends State<AuthForeground> {
  bool isLogin = true;
  double opacity = 0;
  double signUpOpacity = 0;
  void startAnimations() {
    setState(() {
      opacity = 1;
    });
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 50), () {
      startAnimations();
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: isLogin ? size.height * 0.25 : size.height * 0.2,
                ),
                AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(milliseconds: 500),
                  child: Text(
                    isLogin ? 'Sign in' : 'Sign up',
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const AuthInput(
                  title: 'Email',
                ),
                if (!isLogin)
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 1500),
                    opacity: signUpOpacity,
                    child: const AuthInput(
                      title: 'Full name',
                    ),
                  ),
                if (!isLogin)
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 1500),
                    opacity: signUpOpacity,
                    child: const AuthInput(
                      title: 'Phone number',
                    ),
                  ),
                const AuthInput(
                  title: 'Password',
                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    height: 50,
                    child: RaisedButton(
                        onPressed: () {
                          Get.off(() => const MyNav());
                        },
                        color: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        textColor: Colors.white,
                        child: Text(
                          isLogin ? 'Sign in' : 'Sign up',
                        ))),
                const SizedBox(height: 20),
                const Center(child: Text('Forgot password?')),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AuthSocialIcon(
                      icon: Icon(
                        FontAwesomeIcons.googlePlus,
                        color: Colors.red.shade800,
                      ),
                      title: 'Google',
                    ),
                    const SizedBox(width: 30),
                    AuthSocialIcon(
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue.shade800,
                      ),
                      title: 'Facebook',
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      isLogin
                          ? 'Dont have an account? '
                          : 'Already have an account? ',
                      style: TextStyle(color: Colors.grey, shadows: [
                        Shadow(
                          color: Colors.grey.shade100,
                          blurRadius: 2,
                        )
                      ]),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isLogin = !isLogin;
                          signUpOpacity = isLogin ? 0 : 1;
                        });
                      },
                      child: Text(
                        isLogin ? 'Sign up' : 'Sign in',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ]),
        ));
  }
}
