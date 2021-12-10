import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:the_plug/helpers/constants.dart';
import 'package:the_plug/providers/ui_provider.dart';
import 'package:the_plug/screens/payment/widgets/my_stepper.dart';
import 'package:the_plug/screens/payment/widgets/order_confimation.dart';
import 'package:the_plug/screens/payment/widgets/payment_screen.dart';
import 'package:the_plug/screens/payment/widgets/thank_you_screen.dart';

class PaymentStepperScreen extends StatefulWidget {
  const PaymentStepperScreen({Key? key}) : super(key: key);

  @override
  State<PaymentStepperScreen> createState() => _PaymentStepperScreenState();
}

class _PaymentStepperScreenState extends State<PaymentStepperScreen> {
  final List<Widget> _screens = const [
    OrderConfirmationScreen(),
    PaymentScreen(),
    ThankYouScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _selectedPage = Provider.of<UIProvider>(context);

    return Scaffold(
      backgroundColor: _selectedPage.currentPaymentScreen != 2
          ? Theme.of(context).scaffoldBackgroundColor
          : Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            MyStepperWidget(),
            Expanded(
              child: _screens[_selectedPage.currentPaymentScreen],
            ),
            if (_selectedPage.currentPaymentScreen < 1)
              Container(
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
            if (_selectedPage.currentPaymentScreen == 2)
              GestureDetector(
                onTap: () {
                  _selectedPage.changePaymentScreen(0);

                  Navigator.of(context).pop();
                },
                child: SizedBox(
                  height: 150,
                  width: 300,
                  child: Lottie.asset(
                    'assets/buy1.json',
                    fit: BoxFit.cover,
                    repeat: false,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
