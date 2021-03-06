import 'package:flutter/material.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';

class IconBtn extends StatelessWidget {
  final String lable;
  final String image;
  final Function fun;
  final Widget child;
  IconBtn({this.lable, this.child, this.fun, this.image});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: this.fun,
      child: Container(
        height: SizeConfig.blockSizeVertical * 7,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.transparent,
            border: Border.all(color: ColorD.PURLE_BTN_COLOR, width: 1)),
        child: Center(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin:
                      EdgeInsets.only(right: SizeConfig.blockSizeVertical * 7),
                  child: Main_text(lable,
                      color: Colors.grey[700],
                      size: SizeConfig.blockSizeHorizontal * 4,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: SizeConfig.blockSizeVertical * 7,
                  width: SizeConfig.blockSizeVertical * 7,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: image != null
                      ? Image.asset(
                          image,
                          width: SizeConfig.blockSizeVertical * 9,
                          height: SizeConfig.blockSizeVertical * 9,
                          fit: BoxFit.cover,
                        )
                      : Container(
                          width: SizeConfig.blockSizeVertical * 8,
                          height: SizeConfig.blockSizeVertical * 8,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey[200]),
                          child: Image.asset(R.ASSETS_ICONS_ARROWICON_PNG,
                              width: 20,
                              matchTextDirection: true,
                              fit: BoxFit.contain,
                              color: Colors.black,
                              height: 20),
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
