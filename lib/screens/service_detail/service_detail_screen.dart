import 'package:the_plug/screens/home/widgets/home_section.dart';
import 'package:the_plug/screens/service_detail/widgets/details_profile.dart';
import 'package:the_plug/screens/service_detail/widgets/service_bottom_widget.dart';
import 'package:the_plug/screens/service_detail/widgets/service_description_widget.dart';
import 'package:the_plug/screens/service_detail/widgets/service_reviews.dart';
import 'package:the_plug/screens/service_detail/widgets/top_image_widget.dart';
import 'package:flutter/material.dart';

class ServiceDetailsScreen extends StatelessWidget {
  const ServiceDetailsScreen({Key? key}) : super(key: key);
  static const routeName = '/service-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: const [
              TopImageWidget(),
              ServiceDescriptionWidget(),
              DetailsProfileWidget(),
              ServiceReviews(),
              HomeSection(
                title: 'Related Services',
              ),
              SizedBox(height: 40),
            ],
          ),
          const Positioned(
              bottom: 0, left: 0, right: 0, child: ServiceBottomWidget())
        ],
      ),
    );
  }
}
