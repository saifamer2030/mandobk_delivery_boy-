import 'package:flutter/material.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';

class HomeCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * .4,
      height: MediaQuery.of(context).size.height * .24,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                child: cachImage(
                    "https://cdn.jpegmini.com/user/images/slider_puffin_jpegmini_mobile.jpg",
                    MediaQuery.of(context).size.height * .18,
                    MediaQuery.of(context).size.width),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Main_text("كافيهات", color: ColorD.PURLE_BTN_COLOR)))
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(20)),
      // color: Colors.red,
    );
  }
}
