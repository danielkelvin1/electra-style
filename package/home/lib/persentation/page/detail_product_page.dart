// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:core/domain/entities/product.dart';
import 'package:core/domain/entities/user.dart';
import 'package:core/utils/constant.dart';
import 'package:core/utils/image_url_remove_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:core/persentation/widget/QCardReviewsList.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home/persentation/bloc/get_detail_product/get_detail_product_bloc.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({Key? key, required this.id}) : super(key: key);
  static String routeName = "/detail-product/:id";
  final int id;

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  final CarouselController _controller = CarouselController();
  int _currentCarousel = 0;

  @override
  void initState() {
    super.initState();
    context
        .read<GetDetailProductBloc>()
        .add(GetDetailProductEvent.getDetailProduct(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocBuilder<GetDetailProductBloc, GetDetailProductState>(
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (product) {
                double averageStars = 0;
                int countReview = 0;
                if (product.ratings!.isNotEmpty) {
                  product.ratings
                      ?.forEach((element) => averageStars += element.review);
                  averageStars /= product.ratings!.length;
                  countReview = product.ratings!.length;
                }

                return Column(
                  children: [
                    _buildImageCarousel(product.images),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            product.title,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '\$${product.price}',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            product.subtitle,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(
                                  color: const Color(0xff666666),
                                ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              RatingStars(
                                value: averageStars,
                                starColor: const Color(0xffffab07),
                                starSize: 14,
                                valueLabelVisibility: false,
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text("($countReview)")
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          _buildInfoSeller(product.seller!),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            'Description',
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Text(product.description),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Reviews',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'See All',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Column(
                            children:
                                List.generate(product.ratings!.length, (index) {
                              if (index <= 3) {
                                return QCardReviewList(
                                  imageReviews:
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLLnxiSuxmCdQx9wWMxfQ33s2mygSMRq83rw&usqp=CAU',
                                  nameReviews:
                                      product.ratings?[index].user.name ?? "",
                                  dateReviews: "20 Jun 2024",
                                  messageReviews:
                                      product.ratings![index].comment ?? "",
                                  messageSeller: "adwijdijwi",
                                  valueStars:
                                      product.ratings![index].review.toDouble(),
                                );
                              }
                              return const SizedBox();
                            }),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
              orElse: () => const SizedBox(),
            );
          },
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

  Widget _buildImageCarousel(List<ImageProduct> images) {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: images.length,
          carouselController: _controller,
          itemBuilder: (context, index, realIndex) => Image.network(
            "$imageUrl${images[index].imageUrl.imageUrlRemovePublic()}",
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

  Widget _buildInfoSeller(User seller) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                seller.imageUrl != null
                    ? "$imageUrl${seller.imageUrl?.imageUrlRemovePublic()}"
                    : "https://i.pinimg.com/736x/eb/99/a2/eb99a2736e6237c3668de38bbe3eec32.jpg",
              ),
              fit: BoxFit.cover,
            ),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 14.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(seller.name),
            const Text('Jakarta Barat'),
          ],
        ),
        const Expanded(
          child: Text(
            'follow',
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
