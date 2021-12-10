import 'package:flutter/material.dart';

class AuthBackground extends StatefulWidget {
  const AuthBackground({Key? key}) : super(key: key);

  @override
  State<AuthBackground> createState() => _AuthBackgroundState();
}

class _AuthBackgroundState extends State<AuthBackground> {
  double bottomWidget = -300;
  void startAnimations() {
    setState(() {
      bottomWidget = 0;
    });
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1), () {
      startAnimations();
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        SizedBox(
          width: size.width,
          height: size.height,
        ),
        AnimatedPositioned(
          top: bottomWidget,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 2500),
          child: SizedBox(
            width: size.width,
            child: Column(children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    child: Image.asset(
                      'assets/images/clouds.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Image.asset(
                      'assets/images/clouds.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
        AnimatedPositioned(
            bottom: bottomWidget,
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 2500),
            child: SizedBox(
              width: size.width,
              child: Image.asset('assets/images/login.png'),
            ))
      ],
    );
  }
}
