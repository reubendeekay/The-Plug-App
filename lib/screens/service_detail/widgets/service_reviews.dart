import 'package:the_plug/screens/service_detail/widgets/service_review_tile.dart';
import 'package:flutter/material.dart';

class ServiceReviews extends StatelessWidget {
  const ServiceReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Row(
              children: [
                const Text(
                  'Reviews ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  '(3)',
                  style: TextStyle(
                    fontSize: 14,
                    // fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.blueGrey[300]),
                ),
              ],
            ),
          ),
          ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(3, (index) => const ServiceReviewTile())),
        ],
      ),
    );
  }
}
