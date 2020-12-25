
import 'package:bright_mobile/model/UserProfile.dart';
import 'package:bright_mobile/network/ProfileApiService.dart';

class ProfileService{

  var profileApi = new ProfileApiService();

  Future<UserProfile> createProfile(String name, String surname, String phone, String pass){
    return profileApi.create(new UserProfile(name: name, surname: surname, phone: phone, pass: pass));
  }

  Future<UserProfile> fetchByPhoneAndPass(String phone, String pass){
    return profileApi.fetchByPhoneAndPass(phone, pass);
  }
}