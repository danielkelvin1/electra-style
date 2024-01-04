// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:core/persentation/widget/QActionButton.dart';
import 'package:core/persentation/widget/QDropDownButton.dart';
import 'package:core/persentation/widget/QTextField.dart';
import 'package:flutter/material.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({Key? key}) : super(key: key);
  static String routeName = '/add-address';

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  String _province = 'Jawa Barat';
  List<DropdownMenuItem> dummyProvince = [
    const DropdownMenuItem(
      value: 'Jawa Barat',
      child: Text('Jawa Barat'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Add Address',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                QDropDownButton(
                  value: _province,
                  items: dummyProvince,
                  prefixIcon: Icon(
                    Icons.location_city_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  label: Text(
                    'Province',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _province = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                QDropDownButton(
                  value: _province,
                  items: dummyProvince,
                  prefixIcon: Icon(
                    Icons.location_city_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  label: Text(
                    'City',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _province = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                QTextField(
                  label: 'Complete Address',
                  minLines: 3,
                  prefixIcon: Icon(
                    Icons.home_work_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                QActionButton(
                  label: 'Save',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
