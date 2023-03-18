import 'package:flutter/material.dart';
import 'package:puppers_mobile/widgets/buttons/google_sign_in_button.dart';
import 'package:puppers_mobile/widgets/buttons/login_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late bool obscurePassword;
  FocusNode emailNode = FocusNode();
  FocusNode passwordNode = FocusNode();
  int emailElevation = 0;
  int passwordElevation = 0;

  @override
  void initState() {
    super.initState();
    // emailController.text = 'robjvan@gmail.com';
    // passwordController.text = 'Asdf123!';
    obscurePassword = true;

    emailNode.addListener(() => setState(() {}));

    passwordNode.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    emailNode.dispose();
    passwordNode.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Material(
                elevation: emailNode.hasFocus ? 6 : 0,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: TextFormField(
                  focusNode: emailNode,
                  controller: emailController,
                  decoration: const InputDecoration(
                    isDense: true,
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Material(
                elevation: passwordNode.hasFocus ? 6 : 0,
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: TextFormField(
                  focusNode: passwordNode,
                  controller: passwordController,
                  obscureText: obscurePassword,
                  decoration: InputDecoration(
                    isDense: true,
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: obscurePassword
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              const LoginButton(),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'OR', // TODO: Add i18n strings
            ),
          ),
          const GoogleSignInButton()
        ],
      ),
    );
  }
}
