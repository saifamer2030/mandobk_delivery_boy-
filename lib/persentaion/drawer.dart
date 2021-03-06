import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mandobk_delivery_boy/persentaion/Drawer/ui/Account_balance.dart';
import 'package:mandobk_delivery_boy/persentaion/Drawer/ui/suport_Ticket.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/dataUser.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';

import 'package:easy_localization/easy_localization.dart';

import '../persentaion/Drawer/ui/EditPage.dart';
import '../persentaion/Drawer/ui/HelpPage.dart';
import '../persentaion/Drawer/ui/Terms_condition.dart';
import '../persentaion/Drawer/ui/change_language.dart';
import '../persentaion/Drawer/ui/discount_coupns.dart';
import '../persentaion/Drawer/ui/notifcationSetting.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  DataUser _dataUser = DataUser.instance;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        padding: EdgeInsets.only(top: 50, bottom: 70, left: 10),
        alignment: Alignment.centerRight,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(R.ASSETS_ICONS_MNDOBKBG_DRAWER_PNG),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: cachImage(
                          "https://cdn.pixabay.com/photo/2015/08/25/10/40/ben-knapen-906550_960_720.jpg",
                          60,
                          60),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child:
                          Main_text("Mahmoud apo salih", color: Colors.white),
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),
                _lable_icon(LocaleKeys.MyAccount.tr(),
                    R.ASSETS_ICONS_PERSON_PNG, EditePage()),
                // _dataUser.getKey("provider").toString() == "true"
                //     ? Container()
                //     : _lable_icon(
                //         LocaleKeys.MyConversation.tr(),
                //         R.ASSETS_ICONS_CHATS_PNG,
                //         MessagesPage(
                //           leading: true,
                //         )),
                // _lable_icon(LocaleKeys.DeliveryAddres.tr(),
                //     R.ASSETS_ICONS_CARD_PNG, AddressPage()),
                _lable_icon(LocaleKeys.AccountCharge.tr(),
                    R.ASSETS_ICONS_WALLET_PNG, AccountBlance()),
                // _lable_icon(LocaleKeys.DiscountCopune.tr(),
                //     R.ASSETS_ICONS_BANK_PNG, DiscountCoupns()),

                // _dataUser.getKey("provider").toString() == "true"
                //     ? _lable_icon(LocaleKeys.ClientReview.tr(),
                //         R.ASSETS_ICONS_REVIEW_PNG, ClientReviews())
                //     : Container(),

                // _dataUser.getKey("provider").toString() == "true"
                //     ? _lable_icon(LocaleKeys.MarketClients.tr(),
                //         R.ASSETS_ICONS_PEOPLE_PNG, MarketClient())
                //     : Container(),

                // _lable_icon(LocaleKeys.FavoriteProviders.tr(),
                //     R.ASSETS_ICONS_CARD_PNG, FavouriteProviderPage()),
                // _dataUser.getKey("provider").toString() == "true"
                //     ? Container()
                //     : _lable_icon(LocaleKeys.FavoriteMarkets.tr(),
                //         R.ASSETS_ICONS_CART_PNG, FavouriteMarket()),
                _lable_icon(LocaleKeys.SuportedTickets.tr(),
                    R.ASSETS_ICONS_TICKET_PNG, SuportTickets()),
                Padding(
                  padding: const EdgeInsets.only(right: 12, left: 12),
                  child: Column(
                    children: [
                      _lable(LocaleKeys.appLanguage.tr(), ChangeLanguagePage()),
                      _lable(LocaleKeys.Notifications.tr(),
                          NotifcationSetitinPage()),
                      _lable(LocaleKeys.termsAndConditions.tr(),
                          TermsConditions()),
                      _lable(LocaleKeys.Help.tr(), HelopPage()),
                    ],
                  ),
                )
                // _lable_icon("رصيد الحساب", R.ASSETS_ICONS_REVIEW_PNG),
                // _lable_icon("تذاكر الدعم", R.ASSETS_ICONS_PEOPLE_PNG),
              ]),
        ));
  }

  _lable(String lable, Widget distnation) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return distnation;
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(right: 12, left: 12),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Main_text(lable,
                  color: Colors.white, size: 12, fontWeight: FontWeight.w300),
            ],
          ),
        ),
      ),
    );
  }

  _lable_icon(String lable, String image, Widget distnation) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return distnation;
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(right: 12, left: 12),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                image,
                color: Colors.white,
                width: 15,
                height: 15,
              ),
              SizedBox(
                width: 10,
              ),
              Main_text(
                lable,
                color: Colors.white,
                size: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
