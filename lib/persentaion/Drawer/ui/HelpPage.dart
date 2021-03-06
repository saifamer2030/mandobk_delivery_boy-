import 'package:flutter/material.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';
import 'package:easy_localization/easy_localization.dart';
class HelopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(LocaleKeys.Help.tr(), context, leading: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(
              R.ASSETS_ICONS_HELPBG_PNG,
              width: MediaQuery.of(context).size.width * .8,
            ),
            SizedBox(
              height: 20,
            ),
            CommenButtom(
              text: "عن مندوبك",
              width: MediaQuery.of(context).size.width * .8,
            ),
            CommenButtom(
              text: "القناة التعليمة",
              width: MediaQuery.of(context).size.width * .8,
            ),
            SizedBox(
              height: 20,
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
