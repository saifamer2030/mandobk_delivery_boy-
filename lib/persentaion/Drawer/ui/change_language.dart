import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class ChangeLanguagePage extends StatefulWidget {
  @override
  _ChangeLanguagePageState createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(LocaleKeys.appLanguage.tr(), context, leading: true),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            switcher("الغة العربية", false),
            SizedBox(
              height: 20,
            ),
            switcher("English Language ", true)
          ],
        ),
      ),
    );
  }

  switcher(String lable, bool value) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      padding: EdgeInsets.only(right: 12, left: 12, top: 8, bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Main_text(lable, color: ColorD.PURLE_txt_COLOR),
          Switch(
            onChanged: (v) {},
            value: value,
            activeColor: ColorD.PURLE_BTN_COLOR,
          ),
        ],
      ),
    );
  }
}
