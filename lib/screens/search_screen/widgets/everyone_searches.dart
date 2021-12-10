import 'package:the_plug/screens/search_screen/search_service_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class EveryoneSearches extends StatelessWidget {
  const EveryoneSearches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 20.0, left: 12),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                childAspectRatio: 2.4,
                mainAxisSpacing: 10.0),
            itemCount: 10,
            padding: const EdgeInsets.all(0),
            itemBuilder: (ctx, i) => GestureDetector(
                  onTap: () {
                    Get.to(() => const SearchServiceScreen());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    width: 100,
                    height: 50,
                    color: Colors.white,
                    child: const Text(
                      'Sofaset',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                )));
  }
}
