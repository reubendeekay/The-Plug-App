import 'package:the_plug/screens/home/widgets/home_category_tile.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          crossAxisSpacing: 2.0,
          mainAxisSpacing: 2.0,
          children: const [
            HomeCategoryTile(
              title: 'Laundry',
              image: 'laundry.png',
            ),
            HomeCategoryTile(
              title: 'Plumbing',
              image: 'plumbing.png',
            ),
            HomeCategoryTile(
              title: 'Cleaning',
              image: 'cleaning.png',
            ),
            HomeCategoryTile(
              title: 'Appliance\nRepair',
              image: 'appliance.png',
            ),
            HomeCategoryTile(
              title: 'Carpentry',
              image: 'carpenter.png',
            ),
            HomeCategoryTile(
              title: 'Electrical\nRepair',
              image: 'electrical.png',
            ),
            HomeCategoryTile(
              title: 'Painting',
              image: 'painting.png',
            ),
            HomeCategoryTile(
              title: 'Saloon\nServices',
              image: 'saloon.png',
            ),
            HomeCategoryTile(
              title: 'Massage',
              image: 'massage.png',
            ),
            HomeCategoryTile(
              title: 'Garbage\nCollection',
              image: 'garbage.png',
            ),
            HomeCategoryTile(
              title: 'Tutoring\nSessions',
              image: 'tutor.png',
            ),
            HomeCategoryTile(),
          ]),
    );
  }
}
