import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mandobk_delivery_boy/core/Api_utils.dart';
import 'package:mandobk_delivery_boy/data/Auth/models/signupData.dart';
import 'package:mandobk_delivery_boy/domain/auth_repo_inter.dart';

class AuthRepo implements IAuthRepo {
  NetWork _netWork = NetWork();
  Dio dio = new Dio();

  @override
  Future facebookLogin(String email, File image, String facebookId,String deviceToken) {
      // TODO: implement facebookLogin
      throw UnimplementedError();
    }
  
    @override
    Future forgetPassword(String phone) {
      // TODO: implement forgetPassword
      throw UnimplementedError();
    }
  
    @override
    Future googleLogin(String email, File image, String googleId,String deviceToken) {
      // TODO: implement googleLogin
      throw UnimplementedError();
    }
  
    @override
  
  Future login(String phone,String deviceToken) {
      // TODO: implement login
      throw UnimplementedError();
    }
  
    @override
  Future signUp(SignUpData userData) {
      // TODO: implement signUp
      throw UnimplementedError();
    }
  
    @override
    Future verfcationCode(String phone, String code) {
    // TODO: implement verfcationCode
    throw UnimplementedError();
  }

  @override
  Future termsAndCondtions() {
    // TODO: implement termsAndCondtions
    throw UnimplementedError();
  }
}
