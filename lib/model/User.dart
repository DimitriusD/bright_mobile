import 'dart:typed_data';

class User {

  final int id;

  final String username;

  final String surname;

  final String age;

  final String phone;

  final String password;

  //final List<Uint8List> images;

  User({this.id, this.username, this.surname, this.age ,this.phone, this.password});


  factory User.fromJson(Map<String, dynamic> json){
    return User(
        id: json['id'],
        username: json['username'],
        surname: json['surname'],
        phone: json['phone'],
        age: json['age'],
        password: json['password']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'surname': surname,
      'age': age,
      'phone': phone,
      'password': password,
    };
  }


}