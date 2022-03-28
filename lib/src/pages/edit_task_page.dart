import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Actualizando tarea',
            style: TextStyle(color: Color(0xFFB2A81BE))),
        backgroundColor: Colors.white54,
        elevation: 1,
      ),
      body: Text(' Edit Task '),
    );
  }
}
