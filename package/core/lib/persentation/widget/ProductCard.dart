import 'dart:ui';

import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: LayoutBuilder(
                  builder: (context, constraints) => Image.network(
                    'https://images.tokopedia.net/img/KRMmCm/2022/5/9/488c5172-8305-4d76-8519-06c7ed915ba6.jpg',
                    fit: BoxFit.cover,
                    height: constraints.maxHeight,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0),
                    radius: 20,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: const Icon(
                        Icons.favorite_border_outlined,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Text(
          'Roller Rabbit',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          'Description Singkat',
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: const Color(0xff797979)),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          '\$12',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
