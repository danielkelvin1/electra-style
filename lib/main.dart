import 'package:auth/persentation/bloc/login_bloc.dart';
import 'package:auth/persentation/pages/login_page.dart';
import 'package:core/injection.dart';
import 'package:core/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';

void main() {
  AppModule.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => KiwiContainer().resolve<LoginBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Electra Style',
        debugShowCheckedModeBanner: false,
        theme: lightAppTheme(context),
        home: const LoginPage(),
      ),
    );
  }
}
