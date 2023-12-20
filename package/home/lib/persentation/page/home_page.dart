// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:core/persentation/widget/QSearch.dart';
import 'package:core/persentation/widget/ProductCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QSearch(
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 1000,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.9,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) => const ProductCard(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
