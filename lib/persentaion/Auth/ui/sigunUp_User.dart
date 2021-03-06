import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/CustonTextFaild.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';

import 'package:mandobk_delivery_boy/const/resource.dart';

import 'carDetails.dart';




class SignUpUser extends StatefulWidget {
  @override
  _SignUpUserState createState() => _SignUpUserState();
}

class _SignUpUserState extends State<SignUpUser> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailControllerl = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  String lang;
  int x = 1;
  bool isman = false;
  @override
  Widget build(BuildContext context) {
    lang = context.locale.toString();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
          CustomAppBar(LocaleKeys.SignUpAsUser.tr(), context, leading: true),
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
                height: MediaQuery.of(context).size.height * .01,
              ),

              Column(
                  children: List.generate(
                x,
                (index) => Column(
                  children: [
                    Main_text(LocaleKeys.EnteryourBankDetails.tr(),
                        color: ColorD.PURLE_txt_COLOR),
                    _bankName_txtFaild(),
                    _bank_account_txtFaild(),
                    _bank_number_txtFaild(),
                    _bank_Iban_txtFaild(),
                  ],
                ),
              )),
              CommenButtom(
                width: MediaQuery.of(context).size.width * .9,
                function: () {
                  setState(() {
                    x++;
                  });
                },
                text: LocaleKeys.AddNoutherAccount.tr(),
                color: Colors.green,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset:
                        Offset(lang == "ar" ? -30 : 30, lang == "ar" ? 0 : 0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isman = true;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * .45,
                        height: SizeConfig.blockSizeVertical * 7,
                        padding: EdgeInsets.only(right: 21, left: 21),
                        margin: EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: Main_text(LocaleKeys.male.tr(),
                            color: Colors.white),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color:
                              isman ? ColorD.PURLE_BTN_COLOR : Colors.grey[500],
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset:
                        Offset(lang == "ar" ? 30 : -30, lang == "ar" ? 0 : 0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isman = false;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * .45,
                        height: SizeConfig.blockSizeVertical * 7,
                        padding: EdgeInsets.only(right: 21, left: 21),
                        margin: EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: Main_text(LocaleKeys.famale.tr(),
                            color: Colors.white),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color:
                              isman ? Colors.grey[500] : ColorD.PURLE_BTN_COLOR,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              // Container(
              //   height: MediaQuery.of(context).size.height * .1,
              // ),
              // Expanded(child: Container()),
              // Spacer(),
              CommenButtom(
                text: LocaleKeys.Next.tr(),
                function: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CarDetails();
                  }));
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
