import 'dart:typed_data';

class User {

  final int id;

  final String name;

  final String surname;

  final String phone;

  final String pass;

  //final List<Uint8List> images;

  User({this.id, this.name, this.surname, this.phone, this.pass});


  factory User.fromJson(Map<String, dynamic> json){
    return User(
        id: json['id'],
        name: json['name'],
        surname: json['surname'],
        phone: json['phone'],
        pass: json['pass']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'phone': phone,
      'pass': pass,
    };
  }


}