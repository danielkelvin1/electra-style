// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class QCardReviewList extends StatefulWidget {
  const QCardReviewList({Key? key}) : super(key: key);

  @override
  State<QCardReviewList> createState() => _QCardReviewListState();
}

class _QCardReviewListState extends State<QCardReviewList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // border: Border.all(color: Colors.grey, width: 1),
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
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLLnxiSuxmCdQx9wWMxfQ33s2mygSMRq83rw&usqp=CAU',
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
                              'Andrew Laksaasdas as',
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
                              '20 June 2023',
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
                    'loremlorem lorem loremlorem loremlorem loremlorem loremlorem loremlorem loremlorem loremlorem loremlorem loremlorem loremlorem loremlorem loremlorem lorem',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Seller Response',
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
