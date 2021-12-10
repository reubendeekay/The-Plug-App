import 'package:the_plug/providers/location_provider.dart';
import 'package:the_plug/screens/home/widgets/home_ads.dart';
import 'package:the_plug/screens/home/widgets/home_categories.dart';
import 'package:the_plug/screens/home/widgets/home_section.dart';
import 'package:the_plug/screens/home/widgets/top_carousel.dart';

import 'package:the_plug/screens/home/widgets/top_search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Provider.of<LocationProvider>(context, listen: false).getCurrentLocation();
    return Scaffold(
      body: Column(
        children: [
          const TopSearchWidget(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: const [
                TopCarousel(),
                HomeCategories(),
                HomeSection(
                  title: 'Top Rated',
                ),
                HomeSection(
                  title: 'Trending',
                ),
                HomeAds(),
                HomeSection(
                  title: 'Recent',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
