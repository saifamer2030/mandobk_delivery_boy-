import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mandobk_delivery_boy/persentaion/HomePageProvider.dart';
import 'package:mandobk_delivery_boy/persentaion/Notifcation/ui/notifcation_page.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:mandobk_delivery_boy/persentaion/ui/MessagesPage.dart';
import 'persentaion/DeliveryPackage.dart';
import 'core/SizedConfig.dart';
import 'core/dataUser.dart';
import 'persentaion/drawer.dart';
import 'package:easy_localization/easy_localization.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  double xOffset = 0;
  double yOffset = 0;
  double zOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  List<Widget> _widgetOptions = List<Widget>();
  int _currentSelected = 2;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  String lang;

  @override
  void initState() {
    // TODO: implement initState
    _widgetOptions = [
      ClipRRect(
          borderRadius: BorderRadius.circular(20), child: Page("setting")),
      ClipRRect(
          borderRadius: BorderRadius.circular(20), child: DeliveryPackage()),
      ClipRRect(
          borderRadius: BorderRadius.circular(20), child: HomePageProvider()),
      ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child:
            //  _dataUser.getKey("provider").toString() == "true"
            //     ?
            MessagesPage(),
      ),
      // : DeliveryPackage(
      //     isPackage: false,
      //   )),
      ClipRRect(
          borderRadius: BorderRadius.circular(20), child: NotifcationPage()),
    ];
    super.initState();
  }

  void _onItemTapped(int index) {
    print("mahmoud");
    if (index == 0) {
      setState(() {
        if (isDrawerOpen) {
          xOffset = 0;
          yOffset = 0;

          scaleFactor = 1;
          isDrawerOpen = false;
        } else {
          xOffset = lang == "ar" ? -80 : 200;
          yOffset = 100;
          scaleFactor = 0.8;

          isDrawerOpen = true;
        }
      });
    } else {
      setState(() {
        _currentSelected = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    lang = context.locale.toString();
    return Scaffold(
      key: _drawerKey,
      body: Stack(
        children: [
          DrawerScreen(),
          AnimatedContainer(
              transform: Matrix4.translationValues(xOffset, yOffset, 0)
                ..scale(scaleFactor)
                ..rotateY(isDrawerOpen ? -0.6 : 0),
              duration: Duration(milliseconds: 250),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
              child: _widgetOptions.elementAt(_currentSelected)),
        ],
      ),
      drawer: Drawer(),
      bottomNavigationBar: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SizedBox(
              height: 80,
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: _onItemTapped,
                currentIndex: _currentSelected,
                showUnselectedLabels: true,
                unselectedItemColor: Colors.grey[800],
                selectedItemColor: Color.fromRGBO(10, 135, 255, 1),
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    title: FittedBox(
                        fit: BoxFit.cover,
                        child: Main_text(LocaleKeys.Setting.tr(),
                            fontWeight: FontWeight.w400, size: 12)),
                    icon: _icon(R.ASSETS_ICONS_SETTINGS_PNG),
                    activeIcon: _active_icon(R.ASSETS_ICONS_SETTINGS_PNG),
                  ),
                  BottomNavigationBarItem(
                    title: Main_text(LocaleKeys.MyOrders.tr(),
                        fontWeight: FontWeight.w400, size: 10),
                    icon: _icon(R.ASSETS_ICONS_PACKAGE_PNG),
                    activeIcon: _active_icon(R.ASSETS_ICONS_PACKAGE_PNG),
                  ),
                  BottomNavigationBarItem(
                    title: Text(
                      '',
                      style: TextStyle(
                          color: Colors.transparent,
                          fontWeight: FontWeight.w400,
                          fontSize: 1),
                    ),
                    icon: FittedBox(
                      fit: BoxFit.cover,
                      child: Container(
                        child: Card(
                          elevation: 5,
                          child: Container(
                              padding: EdgeInsets.all(15),
                              child: Image.asset(
                                R.ASSETS_ICONS_SHOP_PNG,
                                width: 20,
                                height: 20,
                              )),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.circular(1000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    title: FittedBox(
                        fit: BoxFit.cover,
                        child: Main_text(LocaleKeys.MyConversation.tr(),
                            fontWeight: FontWeight.w400, size: 12)),
                    icon: _icon(R.ASSETS_ICONS_CHATS_PNG),
                    activeIcon: _active_icon(R.ASSETS_ICONS_CHATS_PNG),
                  ),
                  BottomNavigationBarItem(
                    title: FittedBox(
                        fit: BoxFit.cover,
                        child: Main_text(LocaleKeys.Notifications.tr(),
                            fontWeight: FontWeight.w400, size: 12)),
                    icon: _icon(R.ASSETS_ICONS_NOTIFICATION_PNG),
                    activeIcon: _active_icon(R.ASSETS_ICONS_NOTIFICATION_PNG),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _icon(String icon) {
    return InkWell(
      onTap: () {
        print("mahmoud");
      },
      child: Image.asset(
        icon,
        width: 20,
        height: 20,
        color: Colors.black,
      ),
    );
  }

  _active_icon(String icon) {
    return Image.asset(
      icon,
      width: 20,
      height: 20,
      color: ColorD.PURLE_BTN_COLOR,
    );
  }
}

class Page extends StatelessWidget {
  final String tittel;
  Page(this.tittel);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(tittel),
      ),
    );
  }
}
