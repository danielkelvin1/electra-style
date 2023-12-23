// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class QSearch extends StatefulWidget {
  const QSearch({
    Key? key,
    required this.onChanged,
  }) : super(key: key);
  final Function(String)? onChanged;

  @override
  State<QSearch> createState() => _QSearchState();
}

class _QSearchState extends State<QSearch> {
  OutlineInputBorder outlinedBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.all(
      Radius.circular(30),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xfff3f4f5),
        enabledBorder: outlinedBorder,
        focusedBorder: outlinedBorder,
        border: outlinedBorder,
        prefixIcon: const Icon(
          Icons.search,
          size: 30,
        ),
        hintText: 'Search...',
      ),
    );
  }
}
