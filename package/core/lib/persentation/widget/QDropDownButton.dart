// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class QDropDownButton<E> extends StatelessWidget {
  const QDropDownButton({
    Key? key,
    required this.value,
    required this.items,
    this.onChanged,
    this.prefixIcon,
  }) : super(key: key);
  final E value;
  final List<DropdownMenuItem<E>> items;
  final Function(E? value)? onChanged;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: value,
      isExpanded: true,
      borderRadius: BorderRadius.circular(8),
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).primaryColor,
          ),
      icon: Icon(
        Icons.arrow_drop_down,
        color: Theme.of(context).primaryColor,
      ),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffix: const SizedBox(
          width: 15.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 1.3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 1.3,
          ),
        ),
        contentPadding: const EdgeInsets.all(0),
      ),
      items: items,
      onChanged: onChanged,
    );
  }
}
