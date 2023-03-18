import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get/get.dart';
import 'package:puppers_mobile/pages/login_page/login_page_viewmodel.dart';
import 'package:puppers_mobile/pages/register_page/register_page.dart';
import 'package:puppers_mobile/redux/app_state.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(final BuildContext context) {
    return StoreConnector<AppState, LoginPageViewModel>(
      distinct: true,
      converter: LoginPageViewModel.create,
      builder: (_, final LoginPageViewModel vm) {
        return TextButton(
          onPressed: () => Get.offAndToNamed(RegisterPage.routeName),
          child: Text(
            'register-button-label'.tr,
            style: TextStyle(color: vm.textColor),
          ),
        );
      },
    );
  }
}
