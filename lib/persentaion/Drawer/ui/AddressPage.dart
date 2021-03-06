import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/CustonTextFaild.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:easy_localization/easy_localization.dart';

class AddressPage extends StatelessWidget {
  BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    SizeConfig().init(context);
    return Scaffold(
      appBar:
          CustomAppBar(LocaleKeys.DeliveryAddres.tr(), context, leading: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: SizeConfig.blockSizeVertical * 80,
              child: ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    return Container(
                        // width: MediaQuery.of(context).size.width * .5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[200],
                        ),
                        margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                        padding: EdgeInsets.all(12),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Main_text("المملكة السعوديه - الرياض",
                                  color: ColorD.PURLE_BTN_COLOR, size: 14),
                              Main_text("المملكة السعوديه - الرياض",
                                  color: Colors.grey, size: 12),
                              Main_text("المملكة السعوديه - الرياض",
                                  color: Colors.grey, size: 12)
                            ]));
                  }),
            ),
            CommenButtom(
              text: LocaleKeys.AddNewAddres.tr(),
              width: SizeConfig.blockSizeHorizontal * 80,
              function: () {
                showDialog(
                    context: context,
                    barrierColor: Colors.white38,
                    child: Dialog(
                        backgroundColor: Colors.transparent,
                        insetPadding: EdgeInsets.all(10),
                        child: Container(
                          width: double.infinity,
                          height: SizeConfig.blockSizeVertical * 38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(20),
                          // padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Main_text(LocaleKeys.AddNewAddres.tr(),
                                      color: ColorD.PURLE_BTN_COLOR,
                                      fontWeight: FontWeight.bold),
                                  Icon(FontAwesomeIcons.solidTimesCircle)
                                ],
                              ),

                              // dialog centre

                              CommnTextfaild(
                                hint: LocaleKeys.Address.tr(),
                                icon: R.ASSETS_ICONS_LOCATIONGREY_PNG,
                              ),
                              CommenButtom(
                                text: LocaleKeys.AddressFromMap.tr(),
                                width: SizeConfig.blockSizeHorizontal * 90,
                                color: Colors.purple[300],
                              ),
                              CommenButtom(
                                text: LocaleKeys.AddNewAddres.tr(),
                                width: SizeConfig.blockSizeHorizontal * 90,
                              ),
                            ],
                          ),
                        )));
              },
            )
          ],
        ),
      ),
    );
  }
}
