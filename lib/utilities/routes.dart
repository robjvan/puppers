import 'package:get/get.dart';
import 'package:puppers_mobile/pages/login_page/login_page.dart';

class AppRoutes {
  static const String initialRoute = LoginPage.routeName;

  static final List<GetPage<dynamic>> getPages = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: LoginPage.routeName,
      page: LoginPage.new,
    ),
  ];
}
