import 'package:the_plug/helpers/constants.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:the_plug/screens/messaging/widgets/chat_screen.dart';
import 'package:the_plug/screens/payment/payment_stepper.dart';

class ServiceBottomWidget extends StatelessWidget {
  const ServiceBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(12, 3, 12, 5),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Get.to(() => const ChatScreen());
              },
              icon: const Icon(CupertinoIcons.text_bubble_fill)),
          const SizedBox(width: 12),
          Expanded(
            child: SizedBox(
              height: 45,
              child: RaisedButton(
                onPressed: () {
                  Get.to(() => const PaymentStepperScreen());
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                color: kPrimaryColor,
                textColor: Colors.white,
                child: const Text('Book now'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
