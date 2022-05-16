import 'package:get/get.dart';

import '../views/authentication/Loginpage.dart';
import '../views/authentication/Splashpage.dart';
import '../views/home/Homepage.dart';

class Routes {
  static const INITIAL = '/splash';

  static final routes = [
    GetPage(
      name: '/splash',
      page: () => SplashPage(),
    ),
    GetPage(
      name: '/login',
      page: () => LoginPage(),
    ),
    GetPage(
      name: '/home',
      page: () => HomePage(),
    )
  ];
}
