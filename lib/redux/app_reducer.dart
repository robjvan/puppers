
import 'package:puppers_mobile/redux/actions.dart';
import 'package:puppers_mobile/redux/app_state.dart';

AppState appReducer(final AppState state, final dynamic action) {
  return AppState(
    useDarkMode: useDarkModeReducer(state.useDarkMode, action),
  );
}

bool useDarkModeReducer(
  final bool useDarkMode,
  final dynamic action,
) {
  // if (action is ToggleDarkModeAction) {
  //   return !useDarkMode;
  // }
  // return useDarkMode;

  return action is ToggleDarkModeAction ? !useDarkMode : useDarkMode;
}