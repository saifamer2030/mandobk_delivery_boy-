import 'package:flutter/material.dart';

import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mandobk_delivery_boy/persentaion/Auth/ui/chooseLogin.dart';
import 'package:mandobk_delivery_boy/persentaion/introduction/widget/IconBtn.dart';
import 'package:mandobk_delivery_boy/persentaion/introduction/widget/backgraound.dart';

class ChooseLanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BackGraound(
      lable: LocaleKeys.ChooseLanguage.tr(),
      childs: [
        IconBtn(
          fun: () {
            context.locale = Locale('ar');
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ChooseLogin();
            }));
          },
          image: R.ASSETS_ICONS_AR_PNG,
          lable: "اللغة العربية",
        ),
        IconBtn(
          fun: () {
            context.locale = Locale('en');
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ChooseLogin();
            }));
          },
          image: R.ASSETS_ICONS_EN_PNG,
          lable: "English Language",
        )
      ],
    );
  }
}
