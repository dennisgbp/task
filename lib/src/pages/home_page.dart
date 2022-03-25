import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/src/widgets/card_task.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tareas', style: TextStyle(color: Colors.black87)), backgroundColor: Colors.white54),
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
    );
  }
}
