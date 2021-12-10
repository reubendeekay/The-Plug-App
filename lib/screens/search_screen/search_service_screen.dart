import 'package:the_plug/screens/map_overview/widgets/search_bar.dart';
import 'package:the_plug/screens/map_overview/widgets/service_tile.dart';
import 'package:the_plug/screens/search_screen/widgets/search_service_grid.dart';
import 'package:flutter/material.dart';

class SearchServiceScreen extends StatefulWidget {
  const SearchServiceScreen({Key? key}) : super(key: key);

  @override
  State<SearchServiceScreen> createState() => _SearchServiceScreenState();
}

class _SearchServiceScreenState extends State<SearchServiceScreen> {
  bool isGrid = false;
  //TO DO: Add Grid view option
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SearchBarWidget(),
          if (!isGrid)
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                children: List.generate(10, (index) => const ServiceTile()),
              ),
            ),
          if (isGrid)
            const Expanded(
              child: SearchServiceGrid(),
            ),
        ],
      ),
    );
  }
}
