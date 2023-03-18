import 'package:get/get.dart';
import 'package:puppers_mobile/pages/forgot_pass_page/forgot_pass_page.dart';
import 'package:puppers_mobile/pages/login_page/login_page.dart';
import 'package:puppers_mobile/pages/register_page/register_page.dart';

class AppRoutes {
  static const String initialRoute = LoginPage.routeName;

  static final List<GetPage<dynamic>> getPages = <GetPage<dynamic>>[
    GetPage<dynamic>(
      name: LoginPage.routeName,
      page: LoginPage.new,
    ),
    GetPage<dynamic>(
      name: RegisterPage.routeName,
      page: RegisterPage.new,
    ),
    GetPage<dynamic>(
      name: ForgotPassPage.routeName,
      page: ForgotPassPage.new,
    ),
  ];
}
