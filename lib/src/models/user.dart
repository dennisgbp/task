
import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class UserModel  extends HiveObject{

  @HiveField(0)
  int? age;

  @HiveField(1)
  int? id;

  @HiveField(2)
  String? name;

  @HiveField(3)
  String? email;

  @HiveField(4)
  DateTime? createdAt;

  @HiveField(5)
  DateTime? updateAt;

  UserModel({
    this.age,
    this.id,
    this.name,
    this.email,
    this.createdAt,
    this.updateAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      age: json["age"],
      id: json["id"],
      name: json["name"],
      email: json["email"],
      createdAt: json["createdAt"],
      updateAt: json["updateAt"],
    );
  }

  @override
  String toString() {

    return "age: ${age}" "id: ${id}" "name: ${name}" "email: ${email}" "createdAt: ${createdAt}" "updateAt: ${updateAt}";
  }

}
