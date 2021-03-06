import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mandobk_delivery_boy/persentaion/Drawer/ui/suport_Ticket.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class FavouriteProviderPage extends StatefulWidget {
  @override
  _FavouriteProviderPageState createState() => _FavouriteProviderPageState();
}

class _FavouriteProviderPageState extends State<FavouriteProviderPage> {
  List<CellDetails> celldetails = List<CellDetails>();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(LocaleKeys.FavoriteProviders.tr(), context, leading: true),
      body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width * .9,
        child: ListView.builder(
            itemCount: 20,
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                            celldetails[i].xOffset, celldetails[i].yOffset, 0)
                          ..scale(celldetails[i].scaleFactor)
                          ..rotateY(celldetails[i].isDrawerOpen ? -0.6 : 0),
                        duration: Duration(milliseconds: 250),
                        child: Container(
                          // width: MediaQuery.of(context).size.width * .7,
                          // margin: EdgeInsets.only(top: 13),
                          padding: EdgeInsets.only(
                              right: 20, left: 20, top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: cachImage(
                                        "https://cdn.pixabay.com/photo/2015/08/25/10/40/ben-knapen-906550_960_720.jpg",
                                        SizeConfig.blockSizeHorizontal * 20,
                                        SizeConfig.blockSizeHorizontal * 20),
                                  )),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Main_text("محمد أحمد إبراهيم",
                                          color: ColorD.PURLE_txt_COLOR,
                                          fontWeight: FontWeight.w700),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      RatingBar(
                                        initialRating: 3,
                                        direction: Axis.horizontal,

                                        //  allowHalfRating: true,
                                        itemCount: 5,
                                        ratingWidget: RatingWidget(
                                          full: Image.asset(
                                            R.ASSETS_ICONS_STARSYELLOW_PNG,
                                            width: 20,
                                            height: 20,
                                          ),
                                          half: Container(),
                                          empty: Image.asset(
                                            R.ASSETS_ICONS_STARSBLACK_PNG,
                                            width: 20,
                                            height: 20,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        itemSize: 10,
                                        itemPadding:
                                            EdgeInsets.symmetric(horizontal: 2),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      )),
    );
  }
}
