import 'package:flutter/material.dart';

import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';

import 'choose_language.dart';
import 'package:easy_localization/easy_localization.dart';

class OnBordeingPage extends StatefulWidget {
  @override
  _OnBordeingPageState createState() => _OnBordeingPageState();
}

class _OnBordeingPageState extends State<OnBordeingPage> {
  List<String> lables = [
    LocaleKeys.FirstLable.tr(),
    LocaleKeys.SecondLable.tr(),
    LocaleKeys.ThirdLable.tr()
  ];
  int index = 0;

  List<String> images = [
    R.ASSETS_ICONS_INTROILLUSTRATION1_PNG,
    R.ASSETS_ICONS_INTROILLUSTRATION2_PNG,
    R.ASSETS_ICONS_INTROILLUSTRATION3_PNG
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        // color: Colors.red,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.blockSizeVertical * 15,
              ),
              Image.asset(
                images[index],
                // width: SizeConfig.blockSizeHorizontal * 35,
                height: SizeConfig.blockSizeVertical * 32,
                fit: BoxFit.cover,
              ),
              //  padding: const EdgeInsets.only(
              //   top: 20, bottom: 20, left: 25, right: 25),
              Container(
                width: SizeConfig.blockSizeHorizontal * 80,
                child: Main_text(lables[index],
                    size: SizeConfig.blockSizeHorizontal * 3.8,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                    fonthight: 1.5

                    // color: Colors.black,
                    ),
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _dot(index == 0 ? ColorD.PURLE_BTN_COLOR : Colors.grey),
                  _dot(index == 1 ? ColorD.PURLE_BTN_COLOR : Colors.grey),
                  _dot(index == 2 ? ColorD.PURLE_BTN_COLOR : Colors.grey)
                ],
              ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 10,
              ),
              index == 2
                  ? _nextBtn2()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            if (index < 3) {
                              setState(() {
                                index++;
                              });
                            } else {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ChooseLanguage();
                              }));
                            }
                          },
                          child: _nextBtn1(),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ChooseLanguage();
                            }));
                          },
                          child: Main_text(LocaleKeys.Skip.tr(),
                              color: ColorD.PURLE_txt_COLOR,
                              size: 13,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }

  _nextBtn2() {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChooseLanguage();
        }));
      },
      child: Container(
        width: SizeConfig.blockSizeHorizontal * 80,
        height: SizeConfig.blockSizeVertical * 6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: ColorD.PURLE_BTN_COLOR),
        child: Center(
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin:
                      EdgeInsets.only(right: SizeConfig.blockSizeVertical * 4),
                  child: Main_text(LocaleKeys.Finish.tr(),
                      color: Colors.white,
                      size: SizeConfig.blockSizeHorizontal * 3.8),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: SizeConfig.blockSizeVertical * 6,
                  width: SizeConfig.blockSizeVertical * 6,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Image.asset(R.ASSETS_ICONS_ARROWICON_PNG,
                      width: SizeConfig.blockSizeHorizontal * 4,
                      matchTextDirection: true,
                      fit: BoxFit.contain,
                      color: Colors.black,
                      height: SizeConfig.blockSizeVertical * 4),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _nextBtn1() {
    return Container(
      width: SizeConfig.blockSizeHorizontal * 40,
      height: SizeConfig.blockSizeVertical * 6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: ColorD.PURLE_BTN_COLOR),
      child: Center(
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin:
                    EdgeInsets.only(right: SizeConfig.blockSizeVertical * 7),
                child: Main_text(LocaleKeys.Next.tr(),
                    color: Colors.white,
                    size: SizeConfig.blockSizeHorizontal * 3.8),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: SizeConfig.blockSizeVertical * 6,
                width: SizeConfig.blockSizeVertical * 6,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Image.asset(R.ASSETS_ICONS_ARROWICON_PNG,
                    width: SizeConfig.blockSizeHorizontal * 4,
                    matchTextDirection: true,
                    fit: BoxFit.contain,
                    color: Colors.black,
                    height: SizeConfig.blockSizeVertical * 4),
              ),
            )
          ],
        ),
      ),
    );
  }

  _dot(Color color) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.all(4),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(100)),
    );
  }
}
