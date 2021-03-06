import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';

class CommnTextfaild extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool secure;
  final double hint_size;
  final String icon;
  final int maxline;
  // final Function vaildation_fun;

  CommnTextfaild(
      {this.controller,
      this.hint,
      this.secure,
      this.hint_size,
      this.icon,
      this.maxline});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.blockSizeHorizontal * 90,
      height: SizeConfig.blockSizeVertical * 6.5,
      margin: EdgeInsets.only(top: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(color: ColorD.PURLE_BTN_COLOR)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon == null
              ? Container()
              : Container(
                  height: SizeConfig.blockSizeVertical * 6,
                  width: SizeConfig.blockSizeVertical * 6,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[200],
                  ),
                  child: Image.asset(
                    icon,
                    width: SizeConfig.blockSizeVertical * 9,
                    height: SizeConfig.blockSizeVertical * 9,
                    fit: BoxFit.cover,
                  )),
          Expanded(
            child: TextFormField(
              controller: controller,
              // validator: this.vaildation_fun ??
              //     () {
              //       return null;
              //     },
              // minLines: 1,s
              maxLength: maxline ?? null,

              style: GoogleFonts.cairo(
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                  fontSize: 16,
                  color: Colors.black),
              obscureText: secure ?? false,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(left: 8, bottom: 11, top: 8, right: 8),
                hintText: "  $hint  ",
                hintStyle: GoogleFonts.cairo(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    fontSize: hint_size ?? 14,
                    color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
