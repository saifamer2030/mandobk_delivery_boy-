import 'package:flutter/material.dart';

import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';

// import 'package:mandobk/persintation/NavgationBottom/nav.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/CustonTextFaild.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';
import 'package:easy_localization/easy_localization.dart';

class EditePage extends StatefulWidget {
  @override
  _EditePageState createState() => _EditePageState();
}

class _EditePageState extends State<EditePage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailControllerl = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(LocaleKeys.MyAccount.tr(), context, leading: true),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 20,
              // ),
              _pickImage(),
              // Main_text(
              //   "قم بإضافة صورة",
              //   size: 12,
              //   color: Colors.grey[400],
              // ),
              SizedBox(
                height: 20,
              ),
              _username_txtFaild(),
              _phone_txtFaild(),
              _email_txtFaild(),
              _city_txtFaild(),
              _location_txtFaild(),
              Container(
                height: MediaQuery.of(context).size.height * .1,
              ),
              // Expanded(child: Container()),
              // Spacer(),
              CommenButtom(
                text: LocaleKeys.Sure.tr(),
                function: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ),
      ),

      // appBar: ,
    );
  }

  _pickImage() {
    return Container(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: cachImage(
          "https://cdn.pixabay.com/photo/2015/08/25/10/40/ben-knapen-906550_960_720.jpg",
          SizeConfig.blockSizeHorizontal * 30,
          SizeConfig.blockSizeHorizontal * 30),
    ));
  }

  _username_txtFaild() {
    return CommnTextfaild(
      controller: _usernameController,
      hint: LocaleKeys.Name.tr(),
      icon: R.ASSETS_ICONS_PROFILEGREY_PNG,
    );
  }

  _phone_txtFaild() {
    return CommnTextfaild(
      controller: _phoneController,
      hint: LocaleKeys.enterPhone.tr(),
      icon: R.ASSETS_ICONS_PHONEGREY_PNG,
    );
  }

  _email_txtFaild() {
    return CommnTextfaild(
      controller: _emailControllerl,
      hint: LocaleKeys.Email.tr(),
      icon: R.ASSETS_ICONS_MAILGREY_PNG,
    );
  }

  _city_txtFaild() {
    return CommnTextfaild(
        controller: _cityController,
        hint: LocaleKeys.City.tr(),
        icon: R.ASSETS_ICONS_ADDRESSGREY_PNG);
  }

  _location_txtFaild() {
    return CommnTextfaild(
        controller: _locationController,
        hint: LocaleKeys.Address.tr(),
        icon: R.ASSETS_ICONS_LOCATIONGREY_PNG);
  }
}
