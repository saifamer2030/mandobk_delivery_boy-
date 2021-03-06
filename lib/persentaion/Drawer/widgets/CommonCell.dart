import 'package:flutter/material.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';

CommnCell({
  String bigText,
  String smallText,
  String imageurl,
}) {
  return Container(
    // margin: EdgeInsets.only(right: 30, left: 30, top: 15),
    padding: EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), color: Colors.grey[200]),
    child: Row(
      children: [
        Container(
          // width: 80,
          // height: 80,
          alignment: Alignment.center,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: cachImage(imageurl, 50, 50),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Main_text(bigText,
                  color: ColorD.PURLE_BTN_COLOR,
                  fontWeight: FontWeight.bold,
                  size: 14),
              Main_text(smallText, size: 14),
            ],
          ),
        )
      ],
    ),
  );
}
