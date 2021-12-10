import 'package:the_plug/screens/service_profile/service_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class DetailsProfileWidget extends StatelessWidget {
  const DetailsProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(() => const ServiceProfileScreen());
            },
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 25,
                ),
                SizedBox(height: 8),
                Text(
                  'View profile',
                  style: TextStyle(fontSize: 11, color: Colors.orange),
                )
              ],
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Reuben Jefwa',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              profileOption(
                  icon: Icons.contact_page,
                  title: 'Registered:',
                  value: '2 years 1 month'),
              profileOption(
                  icon: Icons.access_time,
                  title: 'Last seen:',
                  value: '2 hrs ago'),
              profileOption(
                icon: Icons.star,
                title: 'Rating:',
                value: '4.5',
              ),
            ],
          ))
        ],
      ),
    );
  }
}

Widget profileOption({IconData? icon, String? title, String? value}) {
  return Column(
    children: [
      const Divider(),
      Row(
        children: [
          Icon(
            icon,
            size: 12,
            color: Colors.grey,
          ),
          const SizedBox(width: 4),
          Text(title!,
              style: const TextStyle(fontSize: 12, color: Colors.grey)),
          const SizedBox(width: 4),
          Text(value!,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600])),
        ],
      ),
    ],
  );
}
