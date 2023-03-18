import 'package:flutter/material.dart';
import 'package:puppers_mobile/redux/app_state.dart';
import 'package:puppers_mobile/utilities/utilities.dart';
import 'package:redux/redux.dart';

class LoginPageViewModel {
  final bool useDarkMode;
  final Color textColor;
  final Color backgroundColor;
  final Function(dynamic) dispatch;

  LoginPageViewModel({
    required this.useDarkMode,
    required this.textColor,
    required this.backgroundColor,
    required this.dispatch,
  });

  factory LoginPageViewModel.create(final Store<AppState> store) {
    Color getBackgroundColor() => store.state.useDarkMode
        ? AppColors.bgColorDarkMode
        : AppColors.bgColorLightMode;

    Color getTextColor() => store.state.useDarkMode
        ? AppColors.textColorDarkMode
        : AppColors.textColorLightMode;

    return LoginPageViewModel(
      useDarkMode: store.state.useDarkMode,
      textColor: getTextColor(),
      backgroundColor: getBackgroundColor(),
      dispatch: store.dispatch,
    );
  }
}
