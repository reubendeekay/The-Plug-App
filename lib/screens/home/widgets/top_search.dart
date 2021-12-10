import 'package:the_plug/helpers/constants.dart';
import 'package:the_plug/screens/search_screen/search_screen_overview.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class TopSearchWidget extends StatelessWidget {
  const TopSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: const BoxDecoration(color: kPrimaryColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
                text: const TextSpan(
              text: 'Hey, ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Reuben',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 18,
                  ),
                )
              ],
            )),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Can we help you with something?',
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Get.to(() => const SearchScreenOverview()),
              child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[50],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Search for a service',
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ));
  }
}
