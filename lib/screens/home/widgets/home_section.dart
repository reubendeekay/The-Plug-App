import 'package:the_plug/helpers/constants.dart';
import 'package:the_plug/screens/home/widgets/home_service_tile.dart';
import 'package:the_plug/screens/map_overview/map_overview.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/route_manager.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.only(bottom: 12.0),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  title ?? 'Laundry',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const MapOverviewScreen());
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: kSecondaryColor,
                    ),
                    child: const Text('View all'),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                HomeServiceTile(),
                HomeServiceTile(),
                HomeServiceTile(),
                HomeServiceTile(),
                HomeServiceTile(),
                HomeServiceTile(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
