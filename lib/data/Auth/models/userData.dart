// class UserData {
import 'dart:convert';

class UserData {
  String msg;
  Data data;

  UserData({this.msg, this.data});

  UserData.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  int id;
  String name;
  String phone;
  String image;
  String gender;
  String birthday;
  String code;
  String type;
  String isActive;
  String isOnline;
  String countryId;
  String email;
  String emailVerifiedAt;
  String apiToken;
  String deviceToken;
  String googleToken;
  String fcToken;
  String createdAt;
  String updatedAt;
  int is_social;
  int commercialImg;
  Data(
      {this.id,
      this.name,
      this.phone,
      this.image,
      this.gender,
      this.birthday,
      this.code,
      this.type,
      this.isActive,
      this.isOnline,
      this.countryId,
      this.email,
      this.emailVerifiedAt,
      this.apiToken,
      this.deviceToken,
      this.googleToken,
      this.fcToken,
      this.createdAt,
      this.updatedAt,
      this.is_social,
      this.commercialImg});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    image = json['image'];
    gender = json['gender'].toString();
    birthday = json['birthday'];
    code = json['code'].toString();
    type = json['type'].toString();
    isActive = json['is_active'].toString();
    isOnline = json['is_online'].toString();
    countryId = json['country_id'].toString();
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    apiToken = json['api_token'];
    deviceToken = json['device_token'];
    googleToken = json['google_token'];
    fcToken = json['fc_token'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    is_social = json["is_social"];
    commercialImg = json["commercialImg"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['image'] = this.image;
    data['gender'] = this.gender;
    data['birthday'] = this.birthday;
    data['code'] = this.code;
    data['type'] = this.type;
    data['is_active'] = this.isActive;
    data['is_online'] = this.isOnline;
    data['country_id'] = this.countryId;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['api_token'] = this.apiToken;
    data['device_token'] = this.deviceToken;
    data['google_token'] = this.googleToken;
    data['fc_token'] = this.fcToken;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data["is_social"] = this.is_social;
    return data;
  }
}
