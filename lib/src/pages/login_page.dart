import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/routes/app_pages.dart';
import 'package:task/src/widgets/text_input.dart';
//import 'package:get/get.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Login Page')),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height*0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(height: 90),
              Container(
                width: 150,
                height: 150,
                child: Image(image: AssetImage('assets/login.png')),
              ),
              TextInput(
                icon: Icons.mail_outline,
                placeholder: 'Correo',
                keyboardType: TextInputType.emailAddress,
                //textController: emailCtrl,
              ),
              TextInput(
                icon: Icons.lock_outline,
                placeholder: 'Contraseña',
                //textController: passCtrl,
                isPassword: true,
              ),
              RaisedButton(
                color: Colors.blue,
                  shape: StadiumBorder(),
                  child: Container(
                    width: 100,
                    height: 50,
                    child: Center(
                      child: Text('Ingresar', style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                  //child: Text('Ingrese', style: TextStyle(color: Colors.white54, fontSize: 18)),
                  onPressed: () {
                  Get.toNamed(Routes.HOME);
                  }
              ),
              GestureDetector(
                child: Text('Si aún no estás registrado \n ¡Ingresa Aquí!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue[600],
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    )
                ),
                onTap: (){
                  Get.toNamed(Routes.REGISTER);
                },
              )

            ],
          ),
        ),
      ),
    );
  }
}
