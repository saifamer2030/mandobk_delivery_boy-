import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mandobk_delivery_boy/persentaion/OrderDetails.dart';
import 'package:mandobk_delivery_boy/core/dataUser.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';

import '../core/design_utils.dart';
import 'package:easy_localization/easy_localization.dart';

class DeliveryPackage extends StatelessWidget {
  BuildContext _ctx;
  DataUser _dataUser = DataUser.instance;
  @override
  Widget build(BuildContext context) {
    _ctx = context;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(LocaleKeys.MyOrders.tr(), context),
      body: _body(),
    );
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                // shrinkWrap: true,
                itemBuilder: (_ctx, i) {
                  return InkWell(
                    onTap: () {
                      // Navigator.push(_ctx,
                      //     MaterialPageRoute(builder: (context) {
                      //   return LastOrder();
                      // }));
                    },
                    child: Container(
                      width: MediaQuery.of(_ctx).size.width * .8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200],
                      ),
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                              borderRadius:
                                                  BorderRadius.circular(100),
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
                                                borderRadius:
                                                    BorderRadius.circular(100),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                              InkWell(
                                onTap: () {
                                  Navigator.push(_ctx,
                                      MaterialPageRoute(builder: (context) {
                                    return OrderDetails();
                                  }));
                                },
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: ColorD.PURLE_BTN_COLOR),
                                  child: Main_text("تفاصيل الطلب",
                                      size: 8, color: Colors.white),
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
                          Main_text(
                              "قام العميل أحمد على بــ تقديم طلب رقم 58 /n إطلع على تفاصيل الطلب و البيانات",
                              size: 10,
                              align: TextAlign.right),
                          SizedBox(
                            height: 6,
                          ),
                          _icon(),
                          SizedBox(
                            height: 12,
                          ),
                          // 0 ملغي
                          // 1 نشط
                          // 2 تم التسليم
                          state(i % 3)
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  state(int check) {
    return FittedBox(
      fit: BoxFit.cover,
      child: Row(
        children: [
          Main_text(
              check == 0 ? "طلب ملغي" : check == 1 ? "طلب نشط" : "تم التسليم",
              size: 10,
              color: check == 0
                  ? Colors.red
                  : check == 1 ? ColorD.PURLE_BTN_COLOR : Colors.green,
              fontWeight: FontWeight.w600),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 7,
            decoration: BoxDecoration(
                color: check == 0
                    ? Colors.red
                    : check == 1 ? ColorD.PURLE_BTN_COLOR : Colors.green,
                borderRadius: BorderRadius.circular(12)),
            width: MediaQuery.of(_ctx).size.width * .6,
          )
        ],
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
