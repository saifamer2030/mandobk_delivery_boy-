import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';

import 'package:mandobk_delivery_boy/persentaion/widget/CustonTextFaild.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/HomeCell.dart';

import 'OrderDetails.dart';

class HomePageProvider extends StatelessWidget {
  TextEditingController _searchController = TextEditingController();
  BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   automaticallyImplyLeading: false,
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) {
      //       return NewMenue();
      //     }));
      //   },
      //   child: Icon(
      //     Icons.add,
      //     color: Colors.white,
      //     size: 30,
      //   ),
      //   backgroundColor: ColorD.PURLE_BTN_COLOR,
      // ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Main_text("الطلبات القادمة",
            color: ColorD.PURLE_txt_COLOR, fontWeight: FontWeight.w800),
      ),
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 50,
            // ),
            // _search_txtFaild(),
            // SizedBox(
            //   height: 20,
            // ),
            // _swiper(),
            // SizedBox(
            //   height: 20,
            // ),
            _wrapCells()
          ],
        ),
      ),
    );
  }

  _search_txtFaild() {
    return Center(
      child: CommnTextfaild(
        controller: _searchController,
        hint: "إبحث عن مطعم , متجر أو أي مكان",
        icon: R.ASSETS_ICONS_SEARCH_PNG,
      ),
    );
  }

  _swiper() {
    return Container(
      height: MediaQuery.of(_context).size.height * .22,
      // color: ,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) {
              //   return AdsPageDetails(
              //       "https://joahbox.com/wp-content/uploads/k-makeup-look-banner.jpg");
              // }));
            },
            child: cachImage(
                "https://joahbox.com/wp-content/uploads/k-makeup-look-banner.jpg",
                MediaQuery.of(context).size.height * .2,
                MediaQuery.of(context).size.width),
          );
        },
        itemCount: 3,
        autoplay: true,
      ),
    );
  }

  _wrapCells() {
    return Column(
      children: [
        CommnTextfaild(
          hint: "إبحث عن مطعم , متجر أو أي مكان",
        ),
        SizedBox(
          height: 10,
        ),
        Wrap(
            children: List.generate(
                20,
                (index) => InkWell(
                    onTap: () {
                      // Navigator.push(_context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return SubCatPage();
                      // }));
                    },
                    child: Container(
                      width: MediaQuery.of(_context).size.width * .9,
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
                                  Navigator.push(_context,
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
                          _icon(),
                          SizedBox(
                            height: 12,
                          ),
                          // 0 ملغي
                          // 1 نشط
                          // 2 تم التسليم
                        ],
                      ),
                    )))),
      ],
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
