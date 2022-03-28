class TaskModel {

  bool? completed;
  int? id;
  String? description;
  String? owner;
  DateTime? createdAt;
  DateTime? updateAt;

  TaskModel ({
    this.completed,
    this.id,
    this.description,
    this.owner,
    this.createdAt,
    this.updateAt,
});

  factory TaskModel.fromJson(Map<String, dynamic> json){
    return TaskModel(
      completed: json["completed"],
      id: json["id"],
      description: json["description"],
      owner: json["owner"],
      createdAt: json["createdAt"],
      updateAt: json["updateAt"],
    );
  }

}