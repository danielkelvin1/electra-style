import 'package:auth/persentation/bloc/register/register_bloc.dart';
import 'package:core/data/models/remote/register_request.dart';
import 'package:core/persentation/widget/QActionButton.dart';
import 'package:core/persentation/widget/QTextField.dart';
import 'package:core/persentation/widget/QDropDownButton.dart';
import 'package:core/utils/form_validation_mixin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final List<String> genderList = ['male', 'female'];

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with FormValidationMixin {
  String _genderDropDownValue = genderList.first;
  String _email = '';
  String _username = '';
  String _name = '';
  String _password = '';
  bool _showPassword = false;
  bool _showConfirmPassword = false;
  final _formKey = GlobalKey<FormState>();

  void register() {
    if (_formKey.currentState!.validate()) {
      RegisterRequest register = RegisterRequest(
        email: _email,
        username: _username,
        name: _name,
        password: _password,
        gender: _genderDropDownValue,
      );
      context.read<RegisterBloc>().add(RegisterEvent.register(register));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Register',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 58,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      QTextField(
                        label: 'Username',
                        validator: emptyValidation,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
                          _username = value;
                        },
                        prefixIcon: Icon(
                          Icons.alternate_email,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      QTextField(
                        label: 'Name',
                        validator: emptyValidation,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
                          _name = value;
                        },
                        prefixIcon: Icon(
                          Icons.alternate_email,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      QTextField(
                        label: 'Email Address',
                        validator: emailValidation,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
                          _email = value;
                        },
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      QTextField(
                        label: 'Password',
                        validator: passwordValidation,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (value) {
                          _password = value;
                        },
                        obscure: !_showPassword,
                        prefixIcon: Icon(
                          Icons.vpn_key_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          child: Icon(
                            _showPassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      QTextField(
                        label: 'Confirm Password',
                        validator: (value) {
                          return confirmPasswordValidation(value, _password);
                        },
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        obscure: !_showConfirmPassword,
                        prefixIcon: Icon(
                          Icons.vpn_key_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _showConfirmPassword = !_showConfirmPassword;
                            });
                          },
                          child: Icon(
                            _showConfirmPassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18.0,
                      ),
                      QDropDownButton(
                        value: _genderDropDownValue,
                        items: genderList
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setState(
                            () {
                              _genderDropDownValue = value!;
                            },
                          );
                        },
                        prefixIcon: Icon(
                          _genderDropDownValue == 'male'
                              ? Icons.male
                              : Icons.female,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 56,
                ),
                BlocConsumer<RegisterBloc, RegisterState>(
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      loaded: (user) {
                        context.go('/');
                      },
                      error: (message) {},
                    );
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => QActionButton(
                        label: 'Register',
                        onPressed: register,
                      ),
                      loading: () => const QActionButton(
                        label: 'Register',
                        onPressed: null,
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: Theme.of(context).textTheme.bodyMedium,
                    children: [
                      TextSpan(
                        text: 'Login',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go('/');
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
