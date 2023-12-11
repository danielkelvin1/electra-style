import 'package:auth/persentation/bloc/login/login_bloc.dart';
import 'package:auth/persentation/bloc/register/register_bloc.dart';
import 'package:auth/persentation/pages/login_page.dart';
import 'package:auth/persentation/pages/register_page.dart';
import 'package:core/injection.dart';
import 'package:core/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:go_router/go_router.dart';

void main() {
  AppModule.setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => KiwiContainer().resolve<LoginBloc>(),
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<RegisterBloc>(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: _router,
        title: 'Electra Style',
        debugShowCheckedModeBanner: false,
        theme: lightAppTheme(context),
      ),
    );
  }

  final GoRouter _router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),
  ]);
}
