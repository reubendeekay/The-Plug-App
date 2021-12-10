import 'package:the_plug/screens/home/widgets/home_service_tile.dart';
import 'package:flutter/material.dart';

class SearchServiceGrid extends StatelessWidget {
  const SearchServiceGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 1.0,
            childAspectRatio: 0.8,
            mainAxisSpacing: 10.0),
        itemCount: 10,
        padding: const EdgeInsets.all(0),
        itemBuilder: (ctx, i) => const HomeServiceTile());
  }
}
