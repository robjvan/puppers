import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get/get.dart';
import 'package:puppers_mobile/pages/login_page/login_page_viewmodel.dart';
import 'package:puppers_mobile/redux/app_state.dart';
import 'package:puppers_mobile/widgets/buttons/register_button.dart';
import 'package:puppers_mobile/widgets/forms/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static const String routeName = '/login';

  @override
  Widget build(final BuildContext context) {
    return StoreConnector<AppState, LoginPageViewModel>(
      distinct: true,
      converter: LoginPageViewModel.create,
      builder: (final _, final LoginPageViewModel vm) {
        return Scaffold(
          backgroundColor: vm.backgroundColor,
          body: SingleChildScrollView(
            child: SizedBox(
              height: Get.height,
              width: Get.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: Get.height / 5, bottom: 64),
                    child: Hero(
                      tag: 'logo',
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: Get.width * 0.6,
                      ),
                    ),
                  ),
                  const LoginForm(),
                  const Spacer(),
                  const RegisterButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
