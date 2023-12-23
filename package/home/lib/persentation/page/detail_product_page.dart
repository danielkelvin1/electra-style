// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:core/persentation/widget/QCardReviewsList.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({Key? key}) : super(key: key);

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  final CarouselController _controller = CarouselController();
  int _currentCarousel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildImageCarousel(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Roller Rabbit',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    '\$25',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Roller Rabbit',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: const Color(0xff666666),
                        ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Row(
                    children: [
                      RatingStars(
                        value: 2,
                        starColor: Color(0xffffab07),
                        starSize: 14,
                        valueLabelVisibility: false,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('(320)')
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    'Description',
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Text('lorem'),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Reviews',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Text(
                        'See All',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const QCardReviewList(
                    imageReviews:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLLnxiSuxmCdQx9wWMxfQ33s2mygSMRq83rw&usqp=CAU',
                    nameReviews: "Andrew Lasin asd asdas das d as",
                    dateReviews: "20 Jun 2023",
                    messageReviews:
                        "lorem askdosakdand sdoasodas dasodjaso doskadok",
                    messageSeller: "adwijdijwi",
                    valueStars: 4,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Add to cart',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Theme.of(context).primaryColor,
              ),
              child: const Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildImageCarousel() {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: 3,
          carouselController: _controller,
          itemBuilder: (context, index, realIndex) => Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLLnxiSuxmCdQx9wWMxfQ33s2mygSMRq83rw&usqp=CAU',
            fit: BoxFit.cover,
          ),
          options: CarouselOptions(
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _currentCarousel = index;
              });
            },
            viewportFraction: 1,
            height: 400,
            autoPlay: true,
          ),
        ),
        Positioned(
          bottom: 25,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => GestureDetector(
                onTap: () => _controller.animateToPage(index),
                child: index == _currentCarousel
                    ? Container(
                        margin: const EdgeInsets.only(right: 12),
                        padding: const EdgeInsetsDirectional.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.only(right: 12),
                        height: 12,
                        width: 12,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
              ),
            ).toList(),
          ),
        ),
        const Positioned(
          bottom: 25,
          right: 25,
          child: Icon(
            Icons.favorite_outline,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
