import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(final BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[100]),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/google-g.png', width: 24.0),
          const SizedBox(width: 16.0),
          const Text('Google Sign In'), // TODO: Add i18n strings
        ],
      ),
    );
  }
}
