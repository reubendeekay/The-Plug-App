// ignore_for_file: unnecessary_null_in_if_null_operators

import 'package:the_plug/helpers/url_methods.dart';
import 'package:the_plug/screens/messaging/widgets/chat_screen.dart';
import 'package:the_plug/screens/service_detail/service_detail_screen.dart';
import 'package:the_plug/widgets/rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ServiceTile extends StatelessWidget {
  const ServiceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Get.to(() => const ServiceDetailsScreen());
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: size.width * 0.3,
                  child: Image.network(
                    'https://freshysites.com/wp-content/uploads/20-Electrician-Websites-Recommended-for-2021.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Electrician',
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on_outlined,
                              size: 12,
                              color: Colors.grey,
                            ),
                            Text(
                              'Nairobi Central, Nairobi',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const MyRatingBar(),
                        const SizedBox(
                          height: 7,
                        ),
                        const Text(
                          'Ksh 2000',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              color: Colors.grey[400],
            ),
            Row(
              children: [
                actionButton('Chat', Icons.email_outlined,
                    onPressed: () => Get.to(() => const ChatScreen())),
                Container(
                  width: 0.5,
                  height: 30,
                  color: Colors.grey[400],
                ),
                actionButton('Book', Icons.style, onPressed: () {
                  makePhoneCall('0796660187');
                }),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget actionButton(String text, IconData icon, {Function? onPressed}) {
    return Expanded(
        child: GestureDetector(
      onTap: () => onPressed?.call(),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(text),
          ],
        ),
      ),
    ));
  }
}
