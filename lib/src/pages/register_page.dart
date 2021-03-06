import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task/src/controllers/register_user_controller.dart';
import 'package:task/src/data_source/local_data_source.dart';
import 'package:task/src/models/user.dart';
import 'package:task/src/models/user_adapter.dart';
import 'package:task/src/routes/app_pages.dart';
import 'package:task/src/widgets/text_input.dart';
import 'package:hive/hive.dart';

Future main() async {

  //Inicializando
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter()); //extends TypeAdapter<UserModel>...
  //Abriendo Caja
  await Hive.openBox<User>('users');
  runApp(RegisterPage());
}

class RegisterPage extends StatelessWidget {
  RegisterUserController _controller = RegisterUserController();
  //Box box = Hive.box("users");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Register Page')),
      body: SingleChildScrollView(

        physics: BouncingScrollPhysics(),
        child: GetBuilder<RegisterUserController>(
          init: _controller,
          builder: (_) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(height: 90),
                  Container(
                    width: 150,
                    height: 150,
                    child: Image(image: AssetImage('assets/usuarios.png')),
                  ),
                  TextInput(
                    icon: Icons.account_circle,
                    placeholder: 'Nombre',
                    keyboardType: TextInputType.text,
                    textController: _.nameCtrl,
                  ),
                  TextInput(
                    icon: Icons.mail_outline,
                    placeholder: 'Correo',
                    keyboardType: TextInputType.emailAddress,
                    textController: _.emailCtrl,
                  ),
                  TextInput(
                    icon: Icons.lock_outline,
                    placeholder: 'Contrase??a',
                    isPassword: true,
                    textController: _.passCtrl,
                  ),
                  TextInput(
                    icon: Icons.date_range,
                    placeholder: 'Edad',
                    keyboardType: TextInputType.datetime,
                    textController: _.ageCtrl,
                  ),
                  SizedBox(height: 10),
                  RaisedButton(
                      color: Color(0xFFB2A81BE),
                      shape: StadiumBorder(),
                      child: Container(
                        width: 100,
                        height: 50,
                        child: Center(
                          child: Text('Registrar',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                      ),
                      //child: Text('Ingrese', style: TextStyle(color: Colors.white54, fontSize: 18)),
                      onPressed: () {
                        Get.toNamed(Routes.HOME);
                        //Boxes.getUsers().listenable();
                        //Hive.box<UserModel>('users');

                        //_.RegisterUser(_.nameCtrl.text, _.emailCtrl.text, _.passCtrl.text, _.ageCtrl.text);
                        print(_.nameCtrl.text);
                        print(_.passCtrl.text);
                        print(_.emailCtrl.text);
                        print(_.ageCtrl.text);
                        //Hive.close();
                      }),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
