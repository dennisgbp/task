import 'package:get/get.dart';
import 'package:task/src/pages/add_task_page.dart';
import 'package:task/src/pages/edit_task_page.dart';
import 'package:task/src/pages/home_task_page.dart';
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
      page:()=> HomeTaskPage(),
      transition: Transition.native,
    ),
    GetPage(
      name: Routes.ADD_TASK,
      page:()=> AddTaskPage(),
      transition: Transition.native,
    ),
    GetPage(
      name: Routes.EDIT_TASK,
      page:()=> EditTaskPage(),
      transition: Transition.native,
    ),
  ];
}

