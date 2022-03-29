import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:task/src/data_source/local_data_source.dart';
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


  @override
  void RegisterUser(String name, String email, String password, String age){
  var id = 0;
  usuario!.name = name;
  usuario!.email = email;
  usuario!.age = age as int?;
  usuario!.id = id++;
  usuario!.createdAt = DateTime.now();
  usuario!.updateAt = DateTime.now();

  // final box = Boxes.getUsers();
  // box.add(usuario!);
  // box.put('key', usuario!);
  // print(box.get('users'));

  //return UserModel usuario;
  }




}