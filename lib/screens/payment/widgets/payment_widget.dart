import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_plug/helpers/constants.dart';
import 'package:the_plug/providers/ui_provider.dart';
import 'package:the_plug/screens/payment/widgets/card_field_widget.dart';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({Key? key}) : super(key: key);

  @override
  _PaymentWidgetState createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _selectedPage = Provider.of<UIProvider>(context);
    return Container(
      height: size.height * 0.4,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      margin: const EdgeInsets.only(top: 10),
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10)),
              )
            ],
          ),
          const Expanded(child: CardFieldWidget()),
          Center(
            child: Container(
              width: 300,
              height: 50,
              margin: const EdgeInsets.all(12),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                onPressed: () {
                  _selectedPage.changePaymentScreen(
                      _selectedPage.currentPaymentScreen + 1);
                },
                color: kPrimaryColor,
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
