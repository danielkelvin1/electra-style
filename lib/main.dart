import 'package:auth/persentation/pages/login_page.dart';
import 'package:core/styles/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electra Style',
      theme: lightAppTheme(context),
      home: const LoginPage(),
    );
  }
}
