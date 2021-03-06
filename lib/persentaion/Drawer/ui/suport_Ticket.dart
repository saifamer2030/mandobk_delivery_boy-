import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/CustonTextFaild.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';
import 'package:easy_localization/easy_localization.dart';

class SuportTickets extends StatefulWidget {
  @override
  _SuportTicketsState createState() => _SuportTicketsState();
}

class _SuportTicketsState extends State<SuportTickets> {
  List<CellDetails> celldetails = List<CellDetails>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          CustomAppBar(LocaleKeys.SuportedTickets.tr(), context, leading: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: SizeConfig.blockSizeVertical * 80,
              child: ListView.builder(
                  itemCount: 20,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    if (celldetails.length != 20)
                      celldetails.add(CellDetails(
                          isDrawerOpen: false,
                          xOffset: 0,
                          yOffset: 0,
                          scaleFactor: 1));
                    return InkWell(
                      onTap: () {
                        setState(() {
                          if (celldetails[i].isDrawerOpen) {
                            celldetails[i].xOffset = 0;
                            celldetails[i].yOffset = 0;

                            // celldetails[i].scaleFactor = 1;
                            celldetails[i].isDrawerOpen = false;
                          } else {
                            celldetails[i].xOffset = -20;
                            celldetails[i].yOffset = 0;
                            // celldetails[i].scaleFactor = 0.8;

                            celldetails[i].isDrawerOpen = true;
                          }
                        });
                      },
                      child: Container(
                          // width: MediaQuery.of(context).size.width * .5,

                          margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                          // padding: EdgeInsets.all(12),
                          height: 90,
                          child: Stack(
                            children: [
                              FittedBox(
                                fit: BoxFit.cover,
                                child: Container(
                                  width: MediaQuery.of(context).size.width * .9,
                                  height: 90,
                                  padding: EdgeInsets.all(30),
                                  alignment: Alignment.centerRight,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: ColorD.PURLE_BTN_COLOR,
                                  ),
                                  child: Icon(
                                    FontAwesomeIcons.trashAlt,
                                    color: Colors.white,
                                  ),
                                  // margin:
                                  //     EdgeInsets.only(right: 20, left: 20, top: 20),
                                  // padding: EdgeInsets.all(12),
                                  // height: 90,
                                ),
                              ),
                              AnimatedContainer(
                                transform: Matrix4.translationValues(
                                    celldetails[i].xOffset,
                                    celldetails[i].yOffset,
                                    0)
                                  ..scale(celldetails[i].scaleFactor)
                                  ..rotateY(
                                      celldetails[i].isDrawerOpen ? -0.6 : 0),
                                duration: Duration(milliseconds: 250),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.grey[200],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Main_text("تذكره رقم #1",
                                                  color: ColorD.PURLE_txt_COLOR,
                                                  fontWeight: FontWeight.w700),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color: i % 2 == 0
                                                      ? Colors.red
                                                      : Colors.green,
                                                ),
                                                padding: EdgeInsets.only(
                                                    right: 10,
                                                    left: 10,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Main_text(
                                                    i % 2 == 0
                                                        ? "مغلقة"
                                                        : "مفتوحة",
                                                    color: Colors.white,
                                                    size: 8),
                                              )
                                            ],
                                          ),
                                          Main_text("مشكلة في تسجيل الدخول",
                                              color: Colors.grey, size: 12),
                                        ]),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    );
                  }),
            ),
            CommenButtom(
              text: LocaleKeys.OpenNewTickets.tr(),
              width: SizeConfig.blockSizeHorizontal * 80,
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
                                  Main_text(LocaleKeys.NewTicket.tr(),
                                      color: ColorD.PURLE_BTN_COLOR,
                                      fontWeight: FontWeight.bold),
                                  Icon(FontAwesomeIcons.solidTimesCircle)
                                ],
                              ),

                              // dialog centre

                              CommnTextfaild(
                                hint: LocaleKeys.TicketAddress.tr(),
                                // icon: R.ASSETS_ICONS_LOCATIONGREY_PNG,
                              ),
                              CommnTextfaild(
                                hint: LocaleKeys.TicketDetails.tr(),

                                // icon: R.ASSETS_ICONS_LOCATIONGREY_PNG,
                              ),
                              CommenButtom(
                                text: LocaleKeys.Sure.tr(),
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

class CellDetails {
  double xOffset;
  double yOffset;

  double scaleFactor;

  bool isDrawerOpen;

  CellDetails(
      {this.xOffset, this.yOffset, this.scaleFactor, this.isDrawerOpen});
}
