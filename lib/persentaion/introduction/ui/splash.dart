import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/data/Auth/models/userData.dart';
import 'package:mandobk_delivery_boy/persentaion/Auth/state/auth_store.dart';

import 'package:page_transition/page_transition.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import '../../../nav.dart';
import 'onBoarding.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  nav() {
    Timer(Duration(seconds: 2), () async {
      if(userData==null){
        Navigator.pushReplacement(context,
                             PageTransition(
              duration: Duration(seconds: 1),
              ctx: context,
              type: PageTransitionType.fade,
              child: OnBordeingPage()));
         
      }else{
     Navigator.pushReplacement(context,
                             PageTransition(
              duration: Duration(seconds: 1),
              ctx: context,
              type: PageTransitionType.fade,
              child: Nav()));
      }
    
    });
  }
  UserData get userData => IN.get<AuthStor>().userData;
  @override
  void initState() {
    nav();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        // margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 1),
        child: Image.asset(
          R.ASSETS_ICONS_BG_LOGO_PNG,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
   void goToHomePage() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {}
    } on SocketException catch (_) {
      print('not connected');
      showNetworkErrorDialog(context);
    }
  }

  void showNetworkErrorDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(
            "تنبيه",
            style: TextStyle(
              fontFamily: "Neo sans",
              fontSize: 15,
            ),
          ),
          content: Text(
            "برجاء التاكد من الاتصال بالانترنت",
            style: TextStyle(
              fontFamily: "Neo sans",
              fontSize: 15,
            ),
          ),
          actions: <Widget>[
            CupertinoButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) {
                      return SplashPage();
                    },
                  ),
                );
              },
              child: Text(
                "حاول مرة اخرى",
                style: TextStyle(
                  fontFamily: "Neo sans",
                  fontSize: 15,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
