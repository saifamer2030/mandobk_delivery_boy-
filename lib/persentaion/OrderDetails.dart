import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/CustonTextFaild.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar("تفاصيل الطلب", context, leading: true),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 100,
                          // color: Colors.red,
                          child: Stack(
                            children: [
                              Transform.translate(
                                offset: Offset(15, 0),
                                child: Container(
                                  // width: 80,
                                  // height: 80,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: cachImage(
                                        "https://joahbox.com/wp-content/uploads/k-makeup-look-banner.jpg",
                                        60,
                                        60),
                                  ),
                                ),
                              ),
                              Container(
                                child: Transform.translate(
                                  offset: Offset(-15, 0),
                                  child: Container(
                                    // width: 80,
                                    // height: 80,

                                    alignment: Alignment.center,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: cachImage(
                                          "https://cdn.pixabay.com/photo/2015/08/25/10/40/ben-knapen-906550_960_720.jpg",
                                          60,
                                          60),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Main_text("اسم الكافيه",
                                  color: ColorD.PURLE_BTN_COLOR,
                                  size: 12,
                                  fontWeight: FontWeight.bold),
                              Main_text("قهوة محوجة",
                                  color: Colors.grey, size: 12),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Divider(
                      color: ColorD.PURLE_BTN_COLOR,
                    ),
                    _icon(),
                    SizedBox(
                      height: 12,
                    ),
                    // 0 ملغي
                    // 1 نشط
                    // 2 تم التسليم
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CommenButtom(
                    width: MediaQuery.of(context).size.width * .4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FontAwesomeIcons.mapMarker,
                          color: Colors.white,
                          size: 10,
                        ),
                        Main_text("موقع التسليم", color: Colors.white, size: 11)
                      ],
                    ),
                  ),
                  CommenButtom(
                    width: MediaQuery.of(context).size.width * .4,
                    color: Colors.grey[500],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FontAwesomeIcons.mapMarker,
                          color: Colors.white,
                          size: 10,
                        ),
                        Main_text("موقع الإستلام ",
                            color: Colors.white, size: 11)
                      ],
                    ),
                  )
                ],
              ),
              Container(
                child: Main_text("تفاصيل الطلب", color: ColorD.PURLE_BTN_COLOR),
                width: MediaQuery.of(context).size.width * .85,
                height: MediaQuery.of(context).size.height * .2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(12),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Main_text("وقت التسليم المطلوب",
                            color: ColorD.PURLE_BTN_COLOR),
                        Main_text("القيمة التقريبة للمشتريات",
                            color: ColorD.PURLE_BTN_COLOR),
                        Main_text("طريقة دفع العميل",
                            color: ColorD.PURLE_BTN_COLOR),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * .15,
                      margin: EdgeInsets.all(2),
                      width: 1,
                      color: ColorD.PURLE_BTN_COLOR,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Main_text("10 صباحا", color: Colors.grey[500]),
                        Main_text("10 ريال", color: Colors.grey[500]),
                        Main_text("نقدا", color: Colors.grey[500]),
                      ],
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width * .85,
                height: MediaQuery.of(context).size.height * .2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(12),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CommenButtom(
                    width: MediaQuery.of(context).size.width * .4,
                    text: "تقديم عرض",
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
                                height: SizeConfig.blockSizeVertical * 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white),
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.all(20),
                                // padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Main_text("تقديم عرض التوصيل",
                                              color: ColorD.PURLE_BTN_COLOR,
                                              fontWeight: FontWeight.bold),
                                          Icon(
                                              FontAwesomeIcons.solidTimesCircle)
                                        ],
                                      ),
                                      CommnTextfaild(
                                        hint: "سعر التوصيل",
                                        // icon: R.ASSETS_ICONS_LOCATIONGREY_PNG,
                                      ),

                                      Container(
                                        margin:
                                            EdgeInsets.only(top: 6, bottom: 6),
                                        child: Main_text(
                                            "يجب أن لا تقل القيمة عن 15 ريال للطلب الواحد",
                                            size: 10),
                                      ),

                                      // dialog centre

                                      CommnTextfaild(
                                        hint: "مدة التوصيل",

                                        // icon: R.ASSETS_ICONS_LOCATIONGREY_PNG,
                                      ),
                                      CommnTextfaild(
                                        hint: "طريقة الدفع",

                                        // icon: R.ASSETS_ICONS_LOCATIONGREY_PNG,
                                      ),
                                      SizedBox(
                                        height: 14,
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
                  ),
                  CommenButtom(
                    width: MediaQuery.of(context).size.width * .4,
                    color: Colors.red,
                    text: "إلغاء الطلب",
                    function: () => Navigator.of(context).pop(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _icon() {
    return FittedBox(
      fit: BoxFit.cover,
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.solidClock,
            color: ColorD.PURLE_BTN_COLOR,
            size: 15,
          ),
          Main_text("يبعد عنك  : 5 دقيقة  ",
              size: 12, color: Colors.black, fontWeight: FontWeight.w300),
          SizedBox(
            width: 10,
          ),
          Icon(
            FontAwesomeIcons.mapMarker,
            color: ColorD.PURLE_BTN_COLOR,
            size: 15,
          ),
          Main_text("المسافة   : 5 كم   ",
              size: 12, color: Colors.black, fontWeight: FontWeight.w300),
        ],
      ),
    );
  }
}
