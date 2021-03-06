import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mandobk_delivery_boy/persentaion/Drawer/ui/suport_Ticket.dart';
import 'package:mandobk_delivery_boy/persentaion/Drawer/widgets/CommonCell.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';

import 'package:easy_localization/easy_localization.dart';

class ClientReviews extends StatefulWidget {
  // final bool leading;
  // ClientReviews({this.leading});
  @override
  _ClientReviewsState createState() => _ClientReviewsState();
}

class _ClientReviewsState extends State<ClientReviews> {
  List<CellDetails> celldetails = List<CellDetails>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          CustomAppBar(LocaleKeys.ClientReview.tr(), context, leading: true),
      body: _body(),
    );
  }

  _body() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, i) {
          if (celldetails.length != 20)
            celldetails.add(CellDetails(
                isDrawerOpen: false, xOffset: 0, yOffset: 0, scaleFactor: 1));
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
                // Navigator.push(_context, MaterialPageRoute(builder: (context) {
                //   return SubCatDetails();
                // }));
              },
              child: Container(
                margin: EdgeInsets.only(right: 20, left: 20, top: 20),
                // padding: EdgeInsets.all(12),
                // height: 90,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .9,
                      // height: 90,
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
                    ),
                    AnimatedContainer(
                      transform: Matrix4.translationValues(
                          celldetails[i].xOffset, celldetails[i].yOffset, 0)
                        ..scale(celldetails[i].scaleFactor)
                        ..rotateY(celldetails[i].isDrawerOpen ? -0.6 : 0),
                      duration: Duration(milliseconds: 250),
                      child: Container(
                        // height: 90,
                        child: CommnCell(
                          bigText: "اسم المستخدم",
                          smallText: "حلو اوي",
                          imageurl:
                              "https://joahbox.com/wp-content/uploads/k-makeup-look-banner.jpg",
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        });
  }
}
