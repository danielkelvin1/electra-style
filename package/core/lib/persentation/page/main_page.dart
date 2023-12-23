// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:core/utils/list_extension.dart';
import 'package:flutter/material.dart';
import 'package:home/persentation/page/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Icon> items = [
      const Icon(
        Icons.home_outlined,
        size: 28,
      ),
      const Icon(
        Icons.notifications_outlined,
        size: 28,
      ),
      const Icon(
        Icons.message_outlined,
        size: 28,
      ),
      const Icon(
        Icons.person_outline,
        size: 28,
      )
    ];
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000),
              blurRadius: 0.1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items.mapIndex(
            (i, e) => GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = i;
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AnimatedScale(
                    duration: const Duration(milliseconds: 300),
                    scale: _currentIndex == i ? 1 : 0,
                    child: CircleAvatar(
                      backgroundColor: _currentIndex == i
                          ? Theme.of(context).primaryColor
                          : Colors.transparent,
                      radius: 25,
                    ),
                  ),
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      _currentIndex == i
                          ? Colors.white
                          : Theme.of(context).primaryColor,
                      BlendMode.srcIn,
                    ),
                    child: e,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
