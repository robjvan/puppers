import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:puppers_mobile/redux/app_reducer.dart';
import 'package:puppers_mobile/redux/app_state.dart';
import 'package:puppers_mobile/utilities/utilities.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:redux_thunk/redux_thunk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  final Store<AppState> store = Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
    // ignore: always_specify_types
    middleware: [
      thunkMiddleware,
      LoggingMiddleware<dynamic>.printer(),
    ],
  );

  runApp(PuppersApp(store));
}

class PuppersApp extends StatelessWidget {
  final Store<AppState> store;
  const PuppersApp(this.store, {super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app-title'.tr,
      translations: AppTranslations(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      getPages: AppRoutes.getPages,
      initialRoute: AppRoutes.initialRoute,
      theme: AppTheme.themeData,
    );
  }
}
