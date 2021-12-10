import 'package:the_plug/widgets/rating_bar.dart';
import 'package:flutter/material.dart';

class ServiceReviewTile extends StatelessWidget {
  const ServiceReviewTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Reuben Jefwa',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: const [
                        MyRatingBar(),
                        Spacer(),
                        Text(
                          '28/12/2021',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const Text(
              'Culpa magna et nulla officia ut aliquip. Irure culpa deserunt sit sunt ad fugiat sit nulla deserunt aute. Dolore excepteur tempor quis excepteur voluptate.'),
          const Divider()
        ],
      ),
    );
  }
}
