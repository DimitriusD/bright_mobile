
import 'package:bright_mobile/model/User.dart';
import 'package:bright_mobile/network/ProfileApiService.dart';

class ProfileService{

  var profileApi = new ProfileApiService();

  Future<User> registerNewUser(String name, String surname, String age, String phone, String password){
    return profileApi.create(new User(username: name, surname: surname, phone: phone, password: password));
  }

  Future<User> login(String phone, String pass){
    return profileApi.login(phone, pass);
  }
}