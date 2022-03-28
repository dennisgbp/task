import 'package:flutter/material.dart';

class CardTask extends StatelessWidget {
  final String? task;
  final String? description;
  final String? owner;
  final String? createdAt;
  final String? updatedAt;

  const CardTask({Key? key,
    this.task,
    this.description,
    this.owner,
    this.createdAt,
    this.updatedAt,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFB0A82B5), width: 1.0),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(task!,style: TextStyle(color: Color(0xFFB0A82B5), fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(description!, style: TextStyle(fontSize: 16)),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Icon(Icons.account_circle, color: Color(0xFFB0A82B5)),
              Text(owner!, style: TextStyle(fontSize: 14)),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.schedule, color: Color(0xFFB0A82B5)),
              Text(createdAt!, style: TextStyle(fontSize: 14)),
              SizedBox(width: 20),
              Icon(Icons.update, color: Color(0xFFB0A82B5)),
              Text(updatedAt!, style: TextStyle(fontSize: 14)),
            ],
          ),
        ],
      ),
    );
  }
}
