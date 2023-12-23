// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class QCardReviewList extends StatefulWidget {
  const QCardReviewList({
    Key? key,
    required this.nameReviews,
    required this.valueStars,
    required this.dateReviews,
    required this.messageReviews,
    this.messageSeller,
    required this.imageReviews,
  }) : super(key: key);
  final String nameReviews;
  final int valueStars;
  final String imageReviews;
  final String dateReviews;
  final String messageReviews;
  final String? messageSeller;

  @override
  State<QCardReviewList> createState() => _QCardReviewListState();
}

class _QCardReviewListState extends State<QCardReviewList> {
  bool _sellerResponseShow = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(
                  1,
                  1,
                ),
                blurRadius: 10.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ),
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.imageReviews,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 4.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.nameReviews,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Text(
                              widget.dateReviews,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    color: const Color(0xff939393),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const RatingStars(
                        valueLabelVisibility: false,
                        starSize: 14,
                        value: 4,
                      ),
                    ],
                  ),
                  Text(
                    widget.messageReviews,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _sellerResponseShow = !_sellerResponseShow;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Seller Response',
                        ),
                        Icon(_sellerResponseShow
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                  Visibility(
                    visible: _sellerResponseShow,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 237, 237, 237),
                      ),
                      child: Text(
                        widget.messageSeller ?? '',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
