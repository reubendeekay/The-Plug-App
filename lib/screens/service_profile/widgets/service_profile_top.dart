import 'package:the_plug/helpers/constants.dart';

import 'package:flutter/material.dart';

class ServiceProfileTop extends StatelessWidget {
  const ServiceProfileTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 7),
      color: Colors.white,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const CircleAvatar(
          radius: 30,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Service Name',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 2.5),
                child: const Text(
                  'https//:service.com',
                  style: TextStyle(color: Colors.orange),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 2.5),
                child: Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 12,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    const Text('Last seen:',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                    const SizedBox(width: 4),
                    Text('2 hrs ago',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600])),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 30,
                    child: RaisedButton(
                      color: kPrimaryColor,
                      onPressed: () {},
                      child: const Text(
                        'Follow',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  followersOption('followers', '190'),
                  followersOption('following', '10'),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Widget followersOption(String title, String number) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(
              fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 3),
        Text(
          title,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
