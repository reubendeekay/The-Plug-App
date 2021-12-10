import 'package:the_plug/screens/map_overview/map_overview.dart';
import 'package:the_plug/screens/search_screen/search_service_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomeCategoryTile extends StatelessWidget {
  const HomeCategoryTile({Key? key, this.title, this.image}) : super(key: key);
  final String? title;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const SearchServiceScreen());
      },
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: image != null
                  ? Image.asset(
                      'assets/images/${image!}',
                    )
                  : Image.network(
                      'https://www.pngfind.com/pngs/m/47-476083_free-png-download-angry-woman-animated-gif-png.png'),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title ?? 'Salon for\nWomen',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
              ),
            )
          ],
        ),
      ),
    );
  }
}
