import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/routes/app_pages.dart';
import 'package:task/src/widgets/text_input.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Register Page')),
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
                child: Image(image: AssetImage('assets/usuarios.png')),
              ),
              TextInput(
                icon: Icons.account_circle,
                placeholder: 'Nombre',
                keyboardType: TextInputType.text,
              ),
              TextInput(
                icon: Icons.mail_outline,
                placeholder: 'Correo',
                keyboardType: TextInputType.emailAddress,
              ),
              TextInput(
                icon: Icons.lock_outline,
                placeholder: 'Contraseña',
                isPassword: true,
              ),
              TextInput(
                icon: Icons.date_range,
                placeholder: 'Edad',
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(height: 10),
              RaisedButton(
                  color: Colors.blue,
                  shape: StadiumBorder(),
                  child: Container(
                    width: 100,
                    height: 50,
                    child: Center(
                      child: Text('Registrar', style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                  //child: Text('Ingrese', style: TextStyle(color: Colors.white54, fontSize: 18)),
                  onPressed: () {
                    Get.toNamed(Routes.HOME);
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
