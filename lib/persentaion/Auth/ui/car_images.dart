import 'package:flutter/material.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';

import 'package:easy_localization/easy_localization.dart';

import '../../../nav.dart';


class CarImage extends StatefulWidget {
  @override
  _CarImageState createState() => _CarImageState();
}

class _CarImageState extends State<CarImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(LocaleKeys.requierdDecoment.tr(), context, leading: true),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _custom_widget(LocaleKeys.IdImage.tr(), () => print("mnskds")),
              _custom_widget(LocaleKeys.DeliveryLicensImage.tr(), () => print("mnskds")),
              _custom_widget(
                  LocaleKeys.EsmaraDeliceryImage.tr(), () => print("mnskds")),
              _custom_widget(
                  LocaleKeys.FrontCarImage.tr(), () => print("mnskds")),
              _custom_widget( LocaleKeys.BackCarImage.tr(), () => print("mnskds")),
              _custom_widget( LocaleKeys.CarNumbderImage.tr(), () => print("mnskds")),
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
              ),
              CommenButtom(
                text: LocaleKeys.Next.tr(),
                function: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return Nav();
                })),
              )
            ],
          ),
        ),
      ),
    );
  }

  _custom_widget(String lable, Function fun) {
    return CommenButtom(
      color: ColorD.PURLE_BHTAN_COLOR,
      width: MediaQuery.of(context).size.width * .9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Main_text(lable, color: Colors.white),
          Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
        ],
      ),
      function: fun,
    );
  }
}
