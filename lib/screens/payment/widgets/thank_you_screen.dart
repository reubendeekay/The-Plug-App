import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Center(
          child: SizedBox(
            height: 200,
            child: Lottie.asset('assets/cal.json'),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: const Text(
            'Thank you\nfor Choosing us!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: const Text(
            'Feel free to rate the services the providers will offer.We strive to provide the best experience and services close to you.Have any complaint? Report to us.The Plug...Your Ultimate Dealer',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ],
    ));
  }
}
