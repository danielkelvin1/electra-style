// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:core/persentation/widget/QSearch.dart';
import 'package:core/persentation/widget/ProductCard.dart';
import 'package:core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:home/persentation/bloc/get_all_product_home_bloc.dart';
import 'package:core/utils/image_url_remove_extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context
        .read<GetAllProductHomeBloc>()
        .add(const GetAllProductHomeEvent.getProductsAll());
  }

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
                child:
                    BlocBuilder<GetAllProductHomeBloc, GetAllProductHomeState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (products) => GridView.builder(
                        itemCount: products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1 / 1.9,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                        ),
                        itemBuilder: (context, index) {
                          final item = products[index];
                          return GestureDetector(
                            onTap: () => context.push('/detail-product'),
                            child: ProductCard(
                              title: item.title,
                              subtitle: item.subtitle,
                              price: item.price,
                              imageUrl:
                                  "$imageUrl${item.images[0].imageUrl.imageUrlRemovePublic()}" ??
                                      'https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg',
                            ),
                          );
                        },
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      error: (message) => Center(
                        child: Text(message),
                      ),
                      orElse: () => const SizedBox(),
                    );
                  },
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
