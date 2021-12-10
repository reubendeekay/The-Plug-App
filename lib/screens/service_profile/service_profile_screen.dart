import 'package:the_plug/screens/map_overview/widgets/service_tile.dart';
import 'package:the_plug/screens/service_profile/widgets/service_profile_top.dart';
import 'package:flutter/material.dart';

class ServiceProfileScreen extends StatelessWidget {
  const ServiceProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const ServiceProfileTop(),
          ...List.generate(10, (index) => const ServiceTile())
        ],
      ),
    );
  }
}
