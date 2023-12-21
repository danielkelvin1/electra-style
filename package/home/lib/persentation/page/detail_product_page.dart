// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
            Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: 3,
                  carouselController: _controller,
                  itemBuilder: (context, index, realIndex) => Image.network(
                    'https://api.duniagames.co.id/api/content/upload/file/15758453031627473375.jpg',
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
            ),
          ],
        ),
      ),
    );
  }
}
