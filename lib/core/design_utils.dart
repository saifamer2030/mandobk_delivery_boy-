import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SizedConfig.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';

class ColorD {
  static const Color PURLE_BTN_COLOR = Color(0XFF89398E);
  static const Color PURLE_txt_COLOR = Color(0XFF89398E);
  static const Color BRAWN_BLACK_COLOR = Color(0XFFBFAB75);
  static const Color BRAWN_White_COLOR = Color(0XFFF2E6C6);
  static const Color GREEN_COLOR = Color(0xFF4AD58B);
  static const Color PURLE_BHTAN_COLOR = Color(0xFFCDB9CE);
}

CustomAppBar(String tiittel, BuildContext context, {bool leading}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    leading: leading != null || leading == true
        ? InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              R.ASSETS_ICONS_ARROWICONGREY_PNG,
              height: 10,
              width: 10,
              scale: 3,
              matchTextDirection: true,
              // fit: BoxFit.contain,
            ))
        : Container(),
    title: Main_text(tiittel,
        color: ColorD.PURLE_BTN_COLOR, fontWeight: FontWeight.w700),
  );
}

// ignore: non_constant_identifier_names
Widget Main_text(String txt,
    {FontWeight fontWeight,
    Color color,
    double size,
    double fonthight,
    TextAlign align}) {
  return Text(
    txt,
    // overflow: TextOverflow.ellipsis,
    textAlign: align ?? TextAlign.center,
    style: GoogleFonts.cairo(
        fontWeight: fontWeight ?? FontWeight.w600,
        height: fonthight ?? 1.5,
        fontSize: size ?? SizeConfig.blockSizeHorizontal * 4,
        color: color ?? Colors.black),
  );
}

// ignore: non_constant_identifier_names
// Widget SvgImage(String path, {double higth, double width}) {
//   return SvgPicture.asset(
//     path,
//     // color: Colors.black,
//     fit: BoxFit.cover,
//     height: higth ?? 25,
//     width: width ?? 25,
//     // matchTextDirection: true,
//   );
// }

// ignore: non_constant_identifier_names
Widget Loading() {
  return Center(
    child: CupertinoActivityIndicator(
      radius: 17,
      animating: true,
    ),
  );
}

// ignore: non_constant_identifier_names
card_container(Widget childd, double width) {
  return Container(
    width: width,
    // height: MediaQuery.of(context).size.height * .15,
    padding: EdgeInsets.only(right: 15, left: 15, top: 20, bottom: 20),
    child: childd,
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 2,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
  );
}

generalCon(String name, BuildContext context, Function fun) {
  return Container(
    width: MediaQuery.of(context).size.width * .8,
    height: MediaQuery.of(context).size.height * .065,
    padding: EdgeInsets.only(right: 21, left: 21),
    margin: EdgeInsets.all(8),
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Main_text(name, color: Colors.black, fontWeight: FontWeight.w500),
        IconButton(
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: Colors.black,
          ),
          onPressed: () {
            fun();
          },
        )
      ],
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.black)),
  );
}

Widget cachImage(String url, double h, double w) {
  return CachedNetworkImage(
    imageUrl: url,
    width: w,
    height: h,
    fit: BoxFit.cover,
    placeholder: (context, url) => Loading(),
    errorWidget: (context, url, error) => Icon(Icons.error),
  );
}

creatorImage(BuildContext context, String adsimge, double size) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(100),
    child: cachImage(
      adsimge,
      size,
      size,
    ),
  );
}
