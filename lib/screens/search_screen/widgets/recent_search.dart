import 'package:the_plug/screens/search_screen/search_service_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class RecentSearches extends StatelessWidget {
  const RecentSearches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0),
        children: List.generate(
          5,
          (index) => const RecentSearchOption(),
        ));
  }
}

class RecentSearchOption extends StatelessWidget {
  const RecentSearchOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const SearchServiceScreen());
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 1),
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        child: Row(
          children: [
            Icon(
              Icons.access_time,
              color: Colors.blueGrey[400],
              size: 16,
            ),
            const SizedBox(width: 12),
            const Text(
              'Recent Search',
            ),
            const Spacer(),
            Icon(Icons.north_west, size: 18, color: Colors.blueGrey[400]),
          ],
        ),
      ),
    );
  }
}
