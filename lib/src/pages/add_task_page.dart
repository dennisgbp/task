import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/routes/app_pages.dart';


class AddTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Creando nueva tarea',
              style: TextStyle(color: Color(0xFFB2A81BE))),
          backgroundColor: Colors.white54,
        elevation: 1,
      ),
      body:
      Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(

              autofocus: true,
              autocorrect:  true,
              maxLines: 5,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Ingresar Descripción',
                isDense:true,
                contentPadding: EdgeInsets.all(8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide: BorderSide(width: 2, color: Color(0xFFB2A81BE)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                  borderSide: BorderSide(width: 1, color: Color(0xFFB2A81BE)),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          RaisedButton(
              color: Color(0xFFB2A81BE),
              shape: StadiumBorder(),
              child: Container(
                width: 150,
                height: 50,
                child: Center(
                  child: Text('Agregar Tarea', style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
              //child: Text('Ingrese', style: TextStyle(color: Colors.white54, fontSize: 18)),
              onPressed: () {
                Get.toNamed(Routes.HOME);
              }
          ),
        ],
      ),
    );
  }
}
