import 'package:flutter/material.dart';
import 'package:the_plug/screens/payment/widgets/payment_widget.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> paymentOptions = [
      paymentOption(
          index: 0,
          image:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/1200px-Mastercard_2019_logo.svg.png',
          title: 'Credit Card'),
      paymentOption(
          index: 1,
          image:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/M-PESA_LOGO-01.svg/1200px-M-PESA_LOGO-01.svg.png',
          title: 'Mpesa'),
      paymentOption(
        index: 2,
        image:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/PayPal_Logo_Icon_2014.svg/666px-PayPal_Logo_Icon_2014.svg.png',
        title: 'Paypal',
      ),
      paymentOption(
          index: 3,
          image:
              'https://banner2.cleanpng.com/20180324/sbe/kisspng-google-logo-g-suite-google-5ab6f1f0dbc9b7.1299911115219389289003.jpg',
          title: 'Google Pay'),
    ];
    return Stack(children: [
      Column(
        children: [
          const Text(
            'Payment Method',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          ...List.generate(
              paymentOptions.length,
              (index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: paymentOptions[index])),
          const Expanded(child: PaymentWidget())
        ],
      ),
    ]);
  }

  Widget paymentOption({int? index, String? title, String? image}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: index == selectedIndex
            ? [
                BoxShadow(
                    blurRadius: 6,
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(0, 5))
              ]
            : null,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: Colors.grey.withOpacity(0.5),
                )),
            padding: const EdgeInsets.all(5),
            width: 50,
            height: 40,
            child: Image.network(
              image!,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title!,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const Spacer(),
          if (index == selectedIndex)
            Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 1.5)),
              child: const Icon(
                Icons.circle,
                size: 16,
              ),
            ),
          if (index != selectedIndex)
            Icon(
              Icons.circle_outlined,
              color: Colors.grey[400],
            )
        ],
      ),
    );
  }
}
