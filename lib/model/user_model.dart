class UserModel {
  final String name, time;

  UserModel({required this.name}) : time = DateTime.now().toIso8601String();
}