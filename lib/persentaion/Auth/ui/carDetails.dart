import 'package:flutter/material.dart';

import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/CustonTextFaild.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';

import 'package:mandobk_delivery_boy/const/resource.dart';

import 'package:easy_localization/easy_localization.dart';

import 'car_images.dart';

class CarDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(LocaleKeys.CarDetails.tr(), context, leading: true),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _carBrand(),
              _carModel(),
              _carYear(),
              _carNamberAr(),
              _carType(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
              ),
              CommenButtom(
                text: LocaleKeys.Next.tr(),
                function: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return CarImage();
                })),
              )
            ],
          ),
        ),
      ),
    );
  }

  _carBrand() {
    return CommnTextfaild(
      hint:LocaleKeys.CarMark.tr(),
      icon: R.ASSETS_ICONS_CARTYPE_PNG,
    );
  }

  _carModel() {
    return CommnTextfaild(
      hint:LocaleKeys.CarTeraz.tr(),
      icon: R.ASSETS_ICONS_CARTYPE_PNG,
    );
  }

  _carYear() {
    return CommnTextfaild(
      hint: LocaleKeys.CarCreatedYear.tr(),
      icon: R.ASSETS_ICONS_CARTYPE_PNG,
    );
  }

  _carnumberen() {
    return CommnTextfaild(
      hint: "رقم السيارة باللغة الانجليزية",
      icon: R.ASSETS_ICONS_CARTYPE_PNG,
    );
  }

  _carNamberAr() {
    return CommnTextfaild(
      hint:LocaleKeys.CarNumberINAr.tr(),
      icon: R.ASSETS_ICONS_CARTYPE_PNG,
    );
  }

  _carType() {
    return CommnTextfaild(
      hint:  LocaleKeys.CarType.tr(),
      icon: R.ASSETS_ICONS_CARTYPE_PNG,
    );
  }
}
