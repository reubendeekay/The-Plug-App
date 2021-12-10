import 'package:flutter/material.dart';

class ServiceDescriptionWidget extends StatelessWidget {
  const ServiceDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(12),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Description',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 5),
          Text(
            '''Consectetur enim commodo sunt ad exercitation commodo elit laboris excepteur sunt ex quis laboris. Ut ea culpa aute eu enim nisi ut ea deserunt. Fugiat exercitation esse qui ex cupidatat eu voluptate ex. Sint non nostrud qui elit  irure nostrud. Sunt proident esse do sunt cupidatat ullamco ullamco deserunt reprehenderit quis et cillum amet. Aute esse ut esse nostrud nisi laborum enim non et sint. Anim cupidatat id veniam cillum non.''',
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
