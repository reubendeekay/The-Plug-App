import 'package:the_plug/screens/map_overview/widgets/search_bar.dart';
import 'package:the_plug/screens/search_screen/widgets/everyone_searches.dart';
import 'package:the_plug/screens/search_screen/widgets/recent_search.dart';
import 'package:the_plug/widgets/secondary_title.dart';
import 'package:flutter/material.dart';

class SearchScreenOverview extends StatelessWidget {
  const SearchScreenOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SearchBarWidget(),
          SecondaryTitle(text: 'You searched'),
          RecentSearches(),
          SecondaryTitle(text: 'Everyone is searching'),
          EveryoneSearches(),
        ],
      ),
    );
  }
}
