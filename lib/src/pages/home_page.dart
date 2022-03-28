import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/widgets/card_task.dart';
import 'package:task/src/routes/app_pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
          title: Text('Listado de Tareas',
              style: TextStyle(color: Color(0xFFB2A81BE))),
          backgroundColor: Colors.white54),

      body: SingleChildScrollView(
        child: Column(

          children: [
            CardTask(
              task: 'Tarea #1 App Task',
              description: 'Fase inicial: Maquetado de páginas y estructura de la aplicación',
              owner: 'Dennis Calderón',
              createdAt: '2022/25/03',
              updatedAt: '2022/26/03',
            ),
            CardTask(
              task: 'Tarea #2 App Task',
              description: 'Fase inicial: Maquetado de páginas y estructura de la aplicación',
              owner: 'Dennis Calderón',
              createdAt: '2022/25/03',
              updatedAt: '2022/26/03',
            ),
            CardTask(
              task: 'Tarea #3 App Task',
              description: 'Fase inicial: Maquetado de páginas y estructura de la aplicación',
              owner: 'Dennis Calderón',
              createdAt: '2022/25/03',
              updatedAt: '2022/26/03',
            ),
            CardTask(
              task: 'Tarea #4 App Task',
              description: 'Fase inicial: Maquetado de páginas y estructura de la aplicación',
              owner: 'Dennis Calderón',
              createdAt: '2022/25/03',
              updatedAt: '2022/26/03',
            ),
          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton(
          child: Icon(Icons.add, size: 40,),
          backgroundColor: Color(0xFFB2A81BE),
          elevation: 2,
          onPressed: () {
            Get.toNamed(Routes.ADD_TASK);
          }
      ),
    );
  }
}
