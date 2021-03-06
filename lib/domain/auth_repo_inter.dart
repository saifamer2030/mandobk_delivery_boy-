import 'dart:io';
import 'package:mandobk_delivery_boy/data/Auth/models/signupData.dart';

abstract class IAuthRepo {
  Future login(String phone,String deviceToken);
  Future signUp(SignUpData userData);
  Future verfcationCode(String phone, String code);
  Future forgetPassword(String phone);
  Future googleLogin(String email, File image, String googleId,String deviceToken);
  Future facebookLogin(String email, File image, String facebookId,String deviceToken);
  Future termsAndCondtions();
}
