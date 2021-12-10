import 'package:carousel_slider/carousel_slider.dart';
import 'package:the_plug/screens/home/widgets/top_carousel.dart';
import 'package:flutter/material.dart';

class WideAdItem extends StatelessWidget {
  const WideAdItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: AspectRatio(
        aspectRatio: 4.5,
        child: Image.network(
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/A902/production/_119466234_gettyimages-1250425362.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class HomeAds extends StatelessWidget {
  const HomeAds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: CarouselSlider(
          items: const [WideAdItem(), WideAdItem(), WideAdItem()],
          options: CarouselOptions(
            aspectRatio: 4.5,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 10),
            autoPlayAnimationDuration: const Duration(seconds: 2),
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            // enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          )),
    );
  }
}
