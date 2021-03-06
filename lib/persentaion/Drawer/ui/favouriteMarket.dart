import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';

import 'package:mandobk_delivery_boy/const/resource.dart';

class FavouriteMarket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar("المتاجر المفضلة", context, leading: true),
      body: _body(),
    );
  }

  _body() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (_context, i) {
          return InkWell(
            onTap: () {
              // Navigator.push(_context, MaterialPageRoute(builder: (context) {
              //   return SubCatDetails();
              // }));
            },
            child: Container(
              margin: EdgeInsets.only(top: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // width: 80,
                    // height: 80,
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: cachImage(
                          "https://joahbox.com/wp-content/uploads/k-makeup-look-banner.jpg",
                          70,
                          70),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Main_text("إسم الكافية",
                              color: ColorD.PURLE_BTN_COLOR),
                          SizedBox(
                            width: MediaQuery.of(_context).size.width * .35,
                          ),
                          Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.red,
                          )
                        ],
                      ),
                      Main_text("كافيهات, مشروبات, خصم خاص, عائلات",
                          color: Colors.grey[600], size: 10, fonthight: 2),
                      RatingBar(
                        initialRating: 3,
                        direction: Axis.horizontal,
                        //  allowHalfRating: true,
                        itemCount: 5,
                        ratingWidget: RatingWidget(
                          full: Image.asset(
                            R.ASSETS_ICONS_STARSYELLOW_PNG,
                            width: 15,
                            height: 15,
                          ),
                          half: Container(),
                          empty: Image.asset(
                            R.ASSETS_ICONS_STARSBLACK_PNG,
                            width: 15,
                            height: 15,
                            fit: BoxFit.cover,
                          ),
                        ),
                        itemSize: 10,
                        itemPadding: EdgeInsets.symmetric(horizontal: 2),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            R.ASSETS_ICONS_LOCATION_PNG,
                            width: 25,
                            height: 25,
                          ),
                          Main_text("5.5 كم",
                              color: Colors.grey[600], size: 10),
                          Container(
                            width: 30,
                            margin: EdgeInsets.only(right: 4, left: 4),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                              R.ASSETS_ICONS_UNION_1_PNG,
                            ))),
                            child:
                                Main_text("30 %", color: Colors.white, size: 8),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
