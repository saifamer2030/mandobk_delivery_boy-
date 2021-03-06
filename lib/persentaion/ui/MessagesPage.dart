import 'package:flutter/material.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';

class MessagesPage extends StatelessWidget {
  final bool leading;
  MessagesPage({this.leading});
  BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(LocaleKeys.MyConversation.tr(), context,
          leading: leading == null ? null : true),
      body: _body(),
    );
  }

  _body() {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (_context, index) {
          return InkWell(
            onTap: () {
              // Navigator.push(_context, MaterialPageRoute(builder: (context) {
              //   return SubCatDetails();
              // }));
            },
            child: Container(
              margin: EdgeInsets.only(right: 30, left: 30, top: 15),
              padding:
                  EdgeInsets.only(top: 15, bottom: 15, left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200]),
              child: Row(
                children: [
                  Container(
                    // width: 80,
                    // height: 80,
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: cachImage(
                          "https://joahbox.com/wp-content/uploads/k-makeup-look-banner.jpg",
                          50,
                          50),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Main_text("اسم المستخدم",
                            color: ColorD.PURLE_BTN_COLOR,
                            fontWeight: FontWeight.bold,
                            size: 14),
                        Main_text("السلام عليكم", size: 14),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
