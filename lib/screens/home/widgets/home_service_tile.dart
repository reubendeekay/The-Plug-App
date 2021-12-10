import 'package:the_plug/helpers/constants.dart';
import 'package:the_plug/screens/service_detail/service_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomeServiceTile extends StatelessWidget {
  const HomeServiceTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Get.to(() => const ServiceDetailsScreen()),
      child: Container(
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                    height: size.width * 0.35,
                    width: size.width * 0.5,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.network(
                        'https://media.istockphoto.com/photos/woman-with-ironed-clothes-in-the-laundry-picture-id1092103792?k=20&m=1092103792&s=612x612&w=0&h=Xz-NZNe6pg0n66n4DiG7rEapKvczP6Kwb7k1PMQhabU=',
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                    right: 5,
                    top: 5,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 14,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '4.5',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Laundry',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        size: 12,
                        color: Colors.grey,
                      ),
                      Text(
                        'Nairobi Central, Nairobi',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text('Ksh 2000'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
