import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_plug/providers/ui_provider.dart';

class MyStepperWidget extends StatefulWidget {
  const MyStepperWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyStepperWidget> createState() => _MyStepperWidgetState();
}

class _MyStepperWidgetState extends State<MyStepperWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final selectedPage = Provider.of<UIProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                selectedPage.changePaymentScreen(0);
              },
              child: circle(context, 0)),
          line(size, 1, context),
          GestureDetector(
              onTap: () {
                selectedPage.changePaymentScreen(1);
              },
              child: circle(context, 1)),
          line(size, 2, context),
          GestureDetector(
              onTap: () {
                selectedPage.changePaymentScreen(2);
              },
              child: circle(context, 2)),
        ],
      ),
    );
  }

  Widget line(Size size, int index, BuildContext context) {
    final _selectedPage = Provider.of<UIProvider>(context).currentPaymentScreen;

    return Container(
      width: size.width * 0.15,
      height: 4,
      color:
          _selectedPage >= index ? Colors.orange : Colors.grey.withOpacity(0.5),
    );
  }

  Widget circle(BuildContext context, int? index) {
    final _selectedPage = Provider.of<UIProvider>(context).currentPaymentScreen;
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(11),
        decoration: BoxDecoration(
            color: _selectedPage >= index!
                ? Colors.orange
                : Colors.grey.withOpacity(0.5),
            shape: BoxShape.circle),
        child: Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).scaffoldBackgroundColor),
        ),
      ),
    );
  }
}
