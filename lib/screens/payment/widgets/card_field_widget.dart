import 'package:flutter/material.dart';

class CardFieldWidget extends StatelessWidget {
  const CardFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: ListView(
        shrinkWrap: true,
        children: [
          cardTitle('Card Number'),
          cardField(),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cardTitle('CVC'),
                    cardField(),
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cardTitle('Expiry Date'),
                    cardField(),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: const [
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 18,
                ),
                SizedBox(
                  width: 8,
                ),
                Text('Save Card information')
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardTitle(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      ),
    );
  }

  Widget cardField() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey[50], borderRadius: BorderRadius.circular(5)),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          border: InputBorder.none,
          hintText: 'Type a name',
        ),
      ),
    );
  }
}
