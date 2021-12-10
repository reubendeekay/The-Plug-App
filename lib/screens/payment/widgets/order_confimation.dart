import 'package:flutter/material.dart';
import 'package:the_plug/screens/payment/widgets/shipping_address_widget.dart';

class OrderConfirmationScreen extends StatelessWidget {
  const OrderConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: const [
          ShippingAddressWidget(),
          
        ],
      ),
    );
  }
}
