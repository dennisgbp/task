import 'package:hive/hive.dart';
import 'package:task/src/models/user.dart';

// class Boxes {
//   static Box<UserModel> getUsers() => Hive.box<UserModel>('users');
// }

class UserDatabase {
  Future initDB() async {
    await Hive.openBox("users");
  }
}