import 'package:flutter/material.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({super.key});

  static const String routeName = '/forgotpass';

  @override
  Widget build(final BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Forgot pass page OK'),
      ),
    );
  }
}