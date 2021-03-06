import 'package:flutter/material.dart';

import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:mandobk_delivery_boy/persentaion/Auth/ui/terms_conditions.dart';

import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';

import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:easy_localization/easy_localization.dart';

class VerficationCodePage extends StatefulWidget {
  @override
  _VerficationCodePageState createState() => _VerficationCodePageState();
}

class _VerficationCodePageState extends State<VerficationCodePage> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(100),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(LocaleKeys.EnterVerficationCode.tr(), context,
          leading: true),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: SizeConfig.blockSizeVertical * 5,
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     InkWell(
            //       onTap: () {
            //         Navigator.of(context).pop();
            //       },
            //       child: Image.asset(R.ASSETS_ICONS_ARROWICON_PNG,
            //           width: 20,
            //           matchTextDirection: true,
            //           fit: BoxFit.contain,
            //           color: Colors.black,
            //           height: 20),
            //     ),
            //     Main_text("إدخال رمز التاكيد",
            //         fontWeight: FontWeight.w600,
            //         size: SizeConfig.blockSizeHorizontal * 4.5),
            //   ],
            // ),
            //
            SizedBox(
              height: SizeConfig.blockSizeVertical * 5,
            ),
            Main_text(LocaleKeys.PleaseEnterVerficationCode.tr(),
                fontWeight: FontWeight.w800,
                size: SizeConfig.blockSizeHorizontal * 4,
                color: ColorD.PURLE_BTN_COLOR),
            _pinInput(),
            Spacer(),
            CommenButtom(
              text: LocaleKeys.Sure.tr(),
              function: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Terms_Condition();
                }));
              },
            )
          ],
        ),
      ),
    );
  }

  _pinInput() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: PinPut(
        fieldsCount: 4,
        focusNode: _pinPutFocusNode,
        controller: _pinPutController,
        submittedFieldDecoration: _pinPutDecoration,
        selectedFieldDecoration: _pinPutDecoration,
        followingFieldDecoration: _pinPutDecoration.copyWith(
            image: DecorationImage(
                image: AssetImage(
                  R.ASSETS_ICONS_SCROLLPOINT3_PNG,
                ),
                scale: 1)),
      ),
    );
  }
}
