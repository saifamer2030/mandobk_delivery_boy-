import 'package:flutter/material.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';

class CommenButtom extends StatelessWidget {
  final String text;
  final double width;
  final double hight;
  final Function function;
  final Color color;
  final Color fontColor;
  final Color borderColor;
  final Widget child;
  CommenButtom(
      {this.function,
      this.hight,
      this.text,
      this.width,
      this.color,
      this.fontColor,
      this.borderColor,
      this.child});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.function,
      child: Container(
        width: width ?? MediaQuery.of(context).size.width,
        height: hight ?? SizeConfig.blockSizeVertical * 7,
        padding: EdgeInsets.only(right: 21, left: 21),
        margin: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: child ??
            Main_text(this.text, color: this.fontColor ?? Colors.white),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: this.borderColor ?? color ?? ColorD.PURLE_BTN_COLOR),
          color: color ?? ColorD.PURLE_BTN_COLOR,
        ),
      ),
    );
  }
}
