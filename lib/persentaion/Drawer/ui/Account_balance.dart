import 'package:flutter/material.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';

import 'package:easy_localization/easy_localization.dart';

class AccountBlance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          CustomAppBar(LocaleKeys.AccountCharge.tr(), context, leading: true),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * .2,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Main_text(LocaleKeys.CurrentCharge.tr(),
                    color: ColorD.PURLE_txt_COLOR, fontWeight: FontWeight.w600),
                Main_text("100", fontWeight: FontWeight.bold, size: 30),
                Main_text("ريال سعودي", fontWeight: FontWeight.bold, size: 15),
              ],
            ),
          ),
          Spacer(),
          CommenButtom(
            text: LocaleKeys.AddNewBalance.tr(),
            width: SizeConfig.blockSizeHorizontal * 90,
          ),
          CommenButtom(
            text: LocaleKeys.BalancewWithdrawal.tr(),
            width: SizeConfig.blockSizeHorizontal * 90,
          ),
          SizedBox(
            height: 30,
          ),
        ]),
      ),
    );
  }
}
