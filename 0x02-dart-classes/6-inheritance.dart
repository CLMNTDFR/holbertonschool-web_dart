import '6-password.dart';

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;
  String? _user_password;

  User({
    this.id,
    this.name,
    this.age,
    this.height,
    String? user_password,
  }) : super(password: user_password) {
    _user_password = user_password;
  }

  String? get user_password => _user_password;

  set user_password(String? value) {
    _user_password = value;
    password = value;
  }

  Map toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    password = user_password;
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})';
  }
}
