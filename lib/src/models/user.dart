
class UserModel {

  int? age;
  int? id;
  String? name;
  String? email;
  DateTime? createdAt;
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
