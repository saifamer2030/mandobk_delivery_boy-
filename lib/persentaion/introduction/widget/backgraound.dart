import 'package:flutter/material.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';

class BackGraound extends StatelessWidget {
  final String lable;
  final List<Widget> childs;
  BackGraound({this.childs, this.lable});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          child: Stack(
            children: [
              //----------------------- Back ground image ----------------------
              Container(
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                    color: ColorD.PURLE_BTN_COLOR,
                    image: DecorationImage(
                        image: AssetImage(R.ASSETS_ICONS_EMPTYBG_PNG),
                        fit: BoxFit.cover),
                  ),
                  height: SizeConfig.screenHeight),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: SizeConfig.screenWidth,
                  // height: SizeConfig.blockSizeVertical * 33,
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Image.asset(
                                    R.ASSETS_ICONS_ARROWICONGREY_PNG,
                                    width: 20,
                                    matchTextDirection: true,
                                    fit: BoxFit.contain,
                                    // color: Colors.black,
                                    height: 20),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.center,
                                child: Main_text(lable,
                                    color: ColorD.PURLE_txt_COLOR,
                                    fontWeight: FontWeight.w700,
                                    size: SizeConfig.blockSizeHorizontal * 4.5),
                              ),
                              Spacer()
                            ],
                          ),
                        ),
                        ...childs
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
        ));
  }
}
