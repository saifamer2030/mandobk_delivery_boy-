import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';

import 'package:mandobk_delivery_boy/persentaion/introduction/widget/backgraound.dart';
import 'VerficationCode.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';

class ChooseLogin extends StatefulWidget {
  final bool isprivider;

  ChooseLogin({this.isprivider});

  @override
  _ChooseLoginState createState() => _ChooseLoginState();
}

class _ChooseLoginState extends State<ChooseLogin> {
  double h;

  TextEditingController _phoneController = TextEditingController();
  String _goodleToken;
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  @override
  void initState() {
    // TODO: implement initState
    firebaseCloudMessagingListeners();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    h = SizeConfig.blockSizeVertical * 6.8;

    return BackGraound(
      lable: LocaleKeys.EnterTheApp.tr(),
      childs: [
        _textFaild(),
        _sosialLogin(),
        _login()
        // CommenButtom(
        //   text: "إستمرار",
        //   function: () {
        //     Navigator.push(context, MaterialPageRoute(builder: (context) {
        //       return VerficationCodePage();
        //     }));
        //   },
        // )
      ],
    );
  }

  _sosialLogin() {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return VerficationCodePage();
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: SizeConfig.blockSizeVertical * 7,
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: ColorD.PURLE_BTN_COLOR,
          ),
        ),
        child: Center(child: Main_text(LocaleKeys.Login.tr())),
      ),
    );
  }

  _login() {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return VerficationCodePage();
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: SizeConfig.blockSizeVertical * 7,
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: ColorD.PURLE_BTN_COLOR,
          ),
        ),
        child: Center(child: Main_text(LocaleKeys.EnterUsingSocial.tr())),
      ),
    );
  }

  _textFaild() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: SizeConfig.blockSizeVertical * 7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: ColorD.PURLE_BTN_COLOR)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: h,
                width: h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Image.asset(
                  R.ASSETS_ICONS_AR_PNG,
                  fit: BoxFit.cover,
                )),
            Container(
              margin: EdgeInsets.only(right: 4, left: 4),
              child: Main_text("+966",
                  color: ColorD.PURLE_txt_COLOR, fontWeight: FontWeight.w800),
            ),
            Container(
              margin: EdgeInsets.only(right: 4, left: 4),
              height: h - 20,
              width: 1,
              color: ColorD.PURLE_BTN_COLOR,
            ),
            Expanded(
              child: TextFormField(
                // textAlign: TextAlign.right,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(
                        left: 8, bottom: 11, top: 12, right: 15),
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.cairo(
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        fontSize: SizeConfig.blockSizeHorizontal * 4,
                        color: Colors.grey[400]),
                    hintText: LocaleKeys.enterPhone.tr()),
              ),
            ),
          ],
        ));
  }

  void firebaseCloudMessagingListeners() {
    if (Platform.isIOS) iosPermission();

    _firebaseMessaging.getToken().then((token) {
      print("--------------gooogle token ------------------");
      print(token);
      if (this.mounted) {
        setState(() {
          _goodleToken = token;
        });
      }
    });
  }

  void iosPermission() {
    _firebaseMessaging.requestNotificationPermissions(
        IosNotificationSettings(sound: true, badge: true, alert: true));
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });
  }
}
