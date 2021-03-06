import 'dart:convert';

import 'package:mandobk_delivery_boy/data/Auth/models/userData.dart';
import 'package:mandobk_delivery_boy/domain/auth_repo_inter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthStor {
  final IAuthRepo authRepo;

  AuthStor(this.authRepo) {
    getData();
  }
  UserData userData;
  void getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final tempData = prefs.getString("userData");

    if (tempData != null) {
      userData = UserData.fromJson(json.decode(tempData));
    }
  }

  void setData(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final tempData = prefs.setString("userData", data);
    // if (tempData != null) {
    userData = UserData.fromJson(json.decode(data));
    // }
  }
}
