// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'package:core/persentation/widget/QActionButton.dart';
import 'package:core/persentation/widget/QTextField.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:core/utils/form_validation_mixin.dart';
import 'package:auth/persentation/bloc/login/login_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with FormValidationMixin {
  bool showPassword = false;
  final _formKey = GlobalKey<FormState>();
  late LoginBloc _loginBloc;
  String _email = '';
  String _password = '';

  @override
  void initState() {
    super.initState();
    _loginBloc = context.read<LoginBloc>();
  }

  void login() {
    if (_formKey.currentState!.validate()) {
      _loginBloc.add(LoginEvent.login(_email, _password));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                SvgPicture.asset(
                  'assets/login.svg',
                  width: 311,
                ),
                const SizedBox(
                  height: 43.0,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      QTextField(
                        label: 'Email Address',
                        validator: emailValidation,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
                          _email = value;
                        },
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      QTextField(
                        label: 'Password',
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: passwordValidation,
                        obscure: !showPassword,
                        onChanged: (value) {
                          _password = value;
                        },
                        prefixIcon: Icon(
                          Icons.vpn_key_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                        textInputAction: TextInputAction.send,
                        suffixIcon: GestureDetector(
                          child: Icon(
                            !showPassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Theme.of(context).primaryColor,
                          ),
                          onTap: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                        ),
                        onSubmitted: (_) {
                          login();
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Forget Password?',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                    textAlign: TextAlign.end,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      loaded: (user) => {context.go('/')},
                      error: (message) {},
                      orElse: () {},
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const QActionButton(
                        label: 'Login',
                        onPressed: null,
                      ),
                      orElse: () => QActionButton(
                        label: 'Login',
                        onPressed: login,
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account yet? ',
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: 'Register',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.push('/register');
                          },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
