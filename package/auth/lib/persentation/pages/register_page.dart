// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:auth/persentation/widgets/QActionButton.dart';
import 'package:auth/persentation/widgets/QTextField.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              QTextField(
                label: 'Username',
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
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Theme.of(context).primaryColor,
                ),
                suffixIcon: GestureDetector(
                  child: Icon(
                    Icons.visibility_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              QTextField(
                label: 'Confirm Password',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Theme.of(context).primaryColor,
                ),
                suffixIcon: GestureDetector(
                  child: Icon(
                    Icons.visibility_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 56,
              ),
              QActionButton(
                label: 'Register',
                onPressed: () {},
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
