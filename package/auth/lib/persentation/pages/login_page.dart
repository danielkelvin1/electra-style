// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'package:auth/persentation/widgets/QActionButton.dart';
import 'package:auth/persentation/widgets/QTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/login.svg',
              width: 311,
            ),
            const SizedBox(
              height: 43.0,
            ),
            SizedBox(
              height: 65,
              child: QTextField(
                label: 'Email Address',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Theme.of(context).primaryColor,
                ),
                onChanged: (p0) {},
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            SizedBox(
              height: 65,
              child: QTextField(
                label: 'Password',
                prefixIcon: Icon(
                  Icons.vpn_key_outlined,
                  color: Theme.of(context).primaryColor,
                ),
                suffixIcon: GestureDetector(
                  child: Icon(
                    Icons.visibility_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onChanged: (p0) {},
              ),
            ),
            const SizedBox(
              height: 43.0,
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
            // btn
            QActionButton(label: 'Login', onPressed: () {}),
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
