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
    this.updatedAt
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey, width: 2.0),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(task!,style: TextStyle(color: Colors.blueGrey, fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(description!),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Icon(Icons.account_circle),
              Text(owner!),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(Icons.schedule),
              Text(createdAt!),
              SizedBox(width: 20),
              Icon(Icons.update),
              Text(updatedAt!),
            ],
          ),
        ],
      ),
    );
  }
}
