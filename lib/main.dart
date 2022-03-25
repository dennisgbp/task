import 'package:flutter/material.dart'; 
import 'package:get/get.dart';
import 'package:task/src/routes/app_pages.dart';

void main() {
  runApp(GetMaterialApp(       
    debugShowCheckedModeBanner: false,       
    initialRoute: Routes.LOGIN,
    defaultTransition: Transition.fade,       
    getPages: AppPages.pages,
  ));       
}
