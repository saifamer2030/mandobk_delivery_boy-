import 'package:flutter/material.dart';

import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/const/resource.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';

// import 'package:mandobk/persintation/NavgationBottom/nav.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/CustonTextFaild.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';
import 'package:easy_localization/easy_localization.dart';

class MyAccountProvider extends StatefulWidget {
  @override
  _MyAccountProviderState createState() => _MyAccountProviderState();
}

class _MyAccountProviderState extends State<MyAccountProvider> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailControllerl = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(LocaleKeys.SignUpAssProvider.tr(), context),
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
              _type_txtFaild(),
              _discription_txtFaild(),
              Container(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * .8,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey[600]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Main_text(LocaleKeys.WorkDates.tr(),
                          color: ColorD.PURLE_BTN_COLOR,
                          fontWeight: FontWeight.bold),
                      Main_text("السبت من 10 صباحا الي 3 عصرا",
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          size: 12),
                      Main_text("السبت من 10 صباحا الي 3 عصرا",
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          size: 12),
                      Main_text("السبت من 10 صباحا الي 3 عصرا",
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          size: 12),
                      Main_text("السبت من 10 صباحا الي 3 عصرا",
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          size: 12),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * .8,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey[600]),
                      borderRadius: BorderRadius.circular(20)),
                  child: Main_text(
                      "السgdklfxjgldsfjilgjdflkgj m,fmndlfikgflkdgdfgdfoigkdfkjgfdkkfdglkndfgfdlkklfdkgjgfnklبت من 10 صباحا الي 3 عصرا",
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      size: 12),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .15,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (_context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: cachImage(
                            "https://joahbox.com/wp-content/uploads/k-makeup-look-banner.jpg",
                            MediaQuery.of(_context).size.height * .15,
                            MediaQuery.of(_context).size.height * .15,
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .01,
              ),
              // Expanded(child: Container()),
              // Spacer(),

              CommenButtom(
                color: ColorD.PURLE_BHTAN_COLOR,
                width: MediaQuery.of(context).size.width * .9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    Main_text(LocaleKeys.AddMoreImage.tr(), color: Colors.white)
                  ],
                ),
                function: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return Nav();
                  // }));
                },
              ),
              Container(
                height: MediaQuery.of(context).size.height * .01,
              ),
              Main_text(LocaleKeys.EnteryourBankDetails.tr(),
                  color: ColorD.PURLE_txt_COLOR),
              // Container(
              //   height: MediaQuery.of(context).size.height * .01,
              // ),
              _bankName_txtFaild(),
              _bank_account_txtFaild(),
              _bank_number_txtFaild(),
              _bank_Iban_txtFaild(),
              Container(
                height: MediaQuery.of(context).size.height * .01,
              ),
              CommenButtom(
                color: ColorD.PURLE_BTN_COLOR,
                width: MediaQuery.of(context).size.width * .9,
                text:LocaleKeys.Sure.tr(),
                function: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return Nav();
                  // }));
                },
              ),
              Container(
                height: MediaQuery.of(context).size.height * .01,
              ),
            ],
          ),
        ),
      ),

      // appBar: ,
    );
  }

  _pickImage() {
    return Container(
        // width: SizeConfig.safeBlockHorizontal * 25,
        // height: SizeConfig.safeBlockHorizontal * 25,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(100),
        //   color: ColorD.PURLE_BTN_COLOR,
        // ),
        child: Image.asset(
      R.ASSETS_ICONS_ADDPHOTO_PNG,
      width: SizeConfig.safeBlockHorizontal * 25,
      height: SizeConfig.safeBlockHorizontal * 25,
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

  _discription_txtFaild() {
    return CommnTextfaild(
      controller: _phoneController,
      hint: LocaleKeys.ActivityDescription.tr(),
      icon: R.ASSETS_ICONS_ORDERGREY_PNG,
    );
  }

  _bankName_txtFaild() {
    return CommnTextfaild(
      controller: _phoneController,
      hint: LocaleKeys.BankName.tr(),
      icon: R.ASSETS_ICONS_BANKGREY_PNG,
    );
  }

  _bank_account_txtFaild() {
    return CommnTextfaild(
      controller: _phoneController,
      hint: LocaleKeys.AcountName.tr(),
      icon: R.ASSETS_ICONS_IDGREY_PNG,
    );
  }

  _bank_number_txtFaild() {
    return CommnTextfaild(
      controller: _phoneController,
      hint: LocaleKeys.AcountNumber.tr(),
      icon: R.ASSETS_ICONS_CARDGREY_PNG,
    );
  }

  _bank_Iban_txtFaild() {
    return CommnTextfaild(
      controller: _phoneController,
      hint: LocaleKeys.IBANNumber.tr(),
      icon: R.ASSETS_ICONS_NUMCARDGREY_PNG,
    );
  }

  _type_txtFaild() {
    return CommnTextfaild(
      controller: _phoneController,
      hint: LocaleKeys.ActivityType.tr(),
      icon: R.ASSETS_ICONS_WORKGREY_PNG,
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
