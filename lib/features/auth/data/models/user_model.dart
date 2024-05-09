import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'user_model.g.dart';
@HiveType(typeId: 1)
class UserModel {
  @HiveField(0)
  final String? name;
  @HiveField(1)
  final String? email;

  UserModel({
    required this.name,
    required this.email,
  });
  factory UserModel.fromFirebase(User user) {
    return UserModel(
      name: user.displayName,
      email: user.email,
    );
  }
}
