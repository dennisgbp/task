import 'package:get/get.dart';
import 'package:task/src/pages/home_page.dart';
import 'package:task/src/pages/login_page.dart';
import 'package:task/src/pages/register_page.dart';
part './app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page:()=> LoginPage(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: Routes.REGISTER,
      page:()=> RegisterPage(),
      transition: Transition.upToDown,
    ),
    GetPage(
      name: Routes.HOME,
      page:()=> HomePage(),
      transition: Transition.native,
    ),
  ];
}

