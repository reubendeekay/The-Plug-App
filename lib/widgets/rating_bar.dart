import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyRatingBar extends StatelessWidget {
  const MyRatingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar(
        initialRating: 3,
        itemSize: 16,
        onRatingUpdate: (rating) {},
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        ignoreGestures: true,
        itemPadding: const EdgeInsets.symmetric(horizontal: 0),
        ratingWidget: RatingWidget(
          empty: const Icon(
            Icons.star_border,
            color: Colors.amber,
            size: 14,
          ),
          full: const Icon(
            Icons.star,
            color: Colors.amber,
            size: 14,
          ),
          half: const Icon(
            Icons.star_half_rounded,
            color: Colors.amber,
            size: 14,
          ),
        ));
  }
}
