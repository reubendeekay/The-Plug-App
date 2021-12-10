import 'package:carousel_slider/carousel_slider.dart';
import 'package:the_plug/screens/home/widgets/top_carousel.dart';
import 'package:flutter/material.dart';

class TopImageWidget extends StatefulWidget {
  const TopImageWidget({Key? key}) : super(key: key);

  @override
  State<TopImageWidget> createState() => _TopImageWidgetState();
}

class _TopImageWidgetState extends State<TopImageWidget> {
  final _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        CarouselSlider(
          items: List.generate(
            4,
            (index) => SizedBox(
              height: size.height * 0.33,
              width: size.width,
              child: Image.network(
                'https://media.istockphoto.com/photos/woman-with-ironed-clothes-in-the-laundry-picture-id1092103792?k=20&m=1092103792&s=612x612&w=0&h=Xz-NZNe6pg0n66n4DiG7rEapKvczP6Kwb7k1PMQhabU=',
                fit: BoxFit.cover,
              ),
            ),
          ),
          carouselController: _controller,
          options: CarouselOptions(
              height: size.height * 0.33,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: const Duration(seconds: 10),
              autoPlayAnimationDuration: const Duration(seconds: 2),
              autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              // enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black,
                  ])),
              width: size.width,
              height: 80,
            )),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: size.width,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),
                const Divider(
                  thickness: 1,
                  height: 8,
                  color: Colors.white,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Laundry',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on_outlined,
                              size: 14,
                              color: Colors.white,
                            ),
                            Text(
                              'Nairobi Central, Nairobi, 5hrs ago',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          color: Colors.orange.withOpacity(0.5),
                          child: const Text(
                            'Sponsored',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          'Ksh 2000',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
