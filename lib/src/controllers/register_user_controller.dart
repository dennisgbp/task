import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task/src/models/user.dart';


class RegisterUserController extends GetxController {

  UserModel ? usuario;

    final nameCtrl = TextEditingController();
    final emailCtrl = TextEditingController();
    final passCtrl = TextEditingController();
    final ageCtrl = TextEditingController();


@override
  void onReady() {
    super.onReady();
  }

  void RegisterUser(String name, String email, String password, String age){
      var id = 0;
    usuario!.name = name;
    usuario!.email = email;
    usuario!.age = age as int?;
    usuario!.id = id++;
    usuario!.createdAt = DateTime.now();
    usuario!.updateAt = DateTime.now();


    print(DateTime.now());
    //print(usuario);
    //return UserModel usuario;
    }

}