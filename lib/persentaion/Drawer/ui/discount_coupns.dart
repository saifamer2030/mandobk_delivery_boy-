import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/dataUser.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/CustonTextFaild.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';
import 'package:easy_localization/easy_localization.dart';
class DiscountCoupns extends StatelessWidget {
  DataUser _dataUser = DataUser.instance;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(LocaleKeys.DiscountCopune.tr(), context, leading: true),
      body: Center(
          child: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * .9,
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, i) {
                    return Container(
                      width: MediaQuery.of(context).size.width * .7,
                      margin: EdgeInsets.only(top: 13),
                      padding: EdgeInsets.only(
                          right: 20, left: 20, top: 15, bottom: 15),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Main_text("كوبون رقم # 1",
                                  color: ColorD.PURLE_txt_COLOR,
                                  fontWeight: FontWeight.w700),
                              _dataUser.getKey("provider").toString() == "true"
                                  ? Switch(
                                      onChanged: (v) {},
                                      value: true,
                                      activeColor: ColorD.PURLE_BTN_COLOR,
                                    )
                                  : Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: ColorD.PURLE_BTN_COLOR),
                                      padding: EdgeInsets.only(
                                          right: 10,
                                          left: 10,
                                          top: 5,
                                          bottom: 5),
                                      child: Main_text("زياره المتجر",
                                          color: Colors.white, size: 8),
                                    )
                            ],
                          ),
                          Main_text("قيمة الكوبون 100 ريال",
                              fontWeight: FontWeight.w600,
                              size: 12,
                              fonthight: 2,
                              color: Colors.grey),
                          Main_text("الحد الادني للطلب 200 ريال",
                              fontWeight: FontWeight.w600,
                              size: 12,
                              color: Colors.grey),
                          Main_text(
                              " تاريخ البدء 7-8-2020 : تاريخ الإنتهاء 12-8-2020",
                              fontWeight: FontWeight.w600,
                              size: 12,
                              color: Colors.grey),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          _dataUser.getKey("provider").toString() == "true"
              ? CommenButtom(
                  text: "إضافة كوبون جديد",
                  function: () {
                    showDialog(
                        context: context,
                        barrierColor: Colors.white38,
                        // barrierDismissible: true,
                        // useSafeArea: true,
                        child: Dialog(
                            backgroundColor: Colors.transparent,
                            insetPadding: EdgeInsets.all(10),
                            child: Container(
                              width: double.infinity,
                              height: SizeConfig.blockSizeVertical * 90,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              margin: EdgeInsets.all(8),
                              padding: EdgeInsets.all(20),
                              // padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Main_text("كوبون جديد",
                                            color: ColorD.PURLE_BTN_COLOR,
                                            fontWeight: FontWeight.bold),
                                        Icon(FontAwesomeIcons.solidTimesCircle)
                                      ],
                                    ),

                                    SizedBox(
                                      height: 30,
                                    ),

                                    // dialog centre
                                    Main_text("كوبون جديد",
                                        fontWeight: FontWeight.bold),
                                    Main_text(
                                      "نسبة خصك",
                                      size: 12,
                                    ),
                                    Main_text(
                                      "مبلغ خصم",
                                      size: 12,
                                    ),
                                    Main_text(
                                      "توصيل مجاني",
                                      size: 12,
                                    ),
                                    CommnTextfaild(
                                      hint: "نسبة الخصم",
                                      // icon: R.ASSETS_ICONS_LOCATIONGREY_PNG,
                                    ),
                                    CommnTextfaild(
                                      hint: "ميلغ الخصم",
                                      // icon: R.ASSETS_ICONS_LOCATIONGREY_PNG,
                                    ),
                                    CommnTextfaild(
                                      hint: "الحد الادني للطلب",
                                      // icon: R.ASSETS_ICONS_LOCATIONGREY_PNG,
                                    ),
                                    CommnTextfaild(
                                      hint: "عدد مرات الاستخدام",
                                      // icon: R.ASSETS_ICONS_LOCATIONGREY_PNG,
                                    ),
                                    CommnTextfaild(
                                      hint: "تايرخ البدء",
                                      // icon: R.ASSETS_ICONS_LOCATIONGREY_PNG,
                                    ),
                                    CommnTextfaild(
                                      hint: "تاريخ الانتهاء",
                                      // icon: R.ASSETS_ICONS_LOCATIONGREY_PNG,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    CommenButtom(
                                      text: "إرسال",
                                      width:
                                          SizeConfig.blockSizeHorizontal * 90,
                                    ),
                                  ],
                                ),
                              ),
                            )));
                  },
                )
              : Container()
        ],
      )),
    );
  }
}
