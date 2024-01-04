import 'package:auth/persentation/bloc/login/login_bloc.dart';
import 'package:auth/persentation/bloc/register/register_bloc.dart';
import 'package:auth/persentation/pages/login_page.dart';
import 'package:auth/persentation/pages/register_page.dart';
import 'package:core/injection.dart';
import 'package:home/persentation/bloc/get_detail_product/get_detail_product_bloc.dart';
import 'package:home/persentation/page/detail_product_page.dart';
import 'package:core/persentation/page/main_page.dart';
import 'package:core/service/local_storage.dart';
import 'package:core/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home/persentation/bloc/get_all_product_home/get_all_product_home_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:go_router/go_router.dart';
import 'package:profile/persentation/bloc/personal_datail/personal_detail_bloc.dart';
import 'package:profile/persentation/page/add_address_page.dart';
import 'package:profile/persentation/page/my_address_page.dart';
import 'package:profile/persentation/page/personal_detail_page.dart';

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
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<GetAllProductHomeBloc>(),
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<GetDetailProductBloc>(),
        ),
        BlocProvider(
          create: (context) => KiwiContainer().resolve<PersonalDetailBloc>(),
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

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MainPage(),
        redirect: (context, state) async {
          final checkStateLogin = await read();
          if (checkStateLogin == null) {
            return LoginPage.routeName;
          }
          return null;
        },
      ),
      GoRoute(
        path: LoginPage.routeName,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RegisterPage.routeName,
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: DetailProductPage.routeName,
        builder: (context, state) {
          int id = int.tryParse(state.pathParameters['id']!) ?? 0;
          return DetailProductPage(
            id: id,
          );
        },
      ),
      GoRoute(
        path: PersonalDetailPage.routeName,
        builder: (context, state) => const PersonalDetailPage(),
      ),
      GoRoute(
        path: MyAddressPage.routeName,
        builder: (context, state) => const MyAddressPage(),
      ),
      GoRoute(
        path: AddAddressPage.routeName,
        builder: (context, state) => const AddAddressPage(),
      ),
    ],
  );
}
