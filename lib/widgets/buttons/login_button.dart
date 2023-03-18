import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(final BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //
      },
      child: Text(
        'Login', // TODO: Add i18n strings
      ),
    );
  }
}
