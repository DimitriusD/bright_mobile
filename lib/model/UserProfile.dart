import 'dart:typed_data';

class UserProfile {

  final int id;

  final String name;

  final String surname;

  final String phone;

  //final List<Uint8List> images;

  UserProfile({this.id, this.name, this.surname, this.phone});


  factory UserProfile.fromJson(Map<String, dynamic> json){
    return UserProfile(
        id: json['id'],
        name: json['name'],
        surname: json['surname'],
        phone: json['phone']);
  }


}