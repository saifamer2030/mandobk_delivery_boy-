// import 'package:flutter/material.dart';

// import 'package:mandobk/core/SizedConfig.dart';
// import 'package:mandobk/core/design_utils.dart';
// import 'package:mandobk/const/resource.dart';
// import 'package:mandobk/generated/locale_keys.g.dart';
// import 'package:mandobk/persintation/ClientNavgationBottom/nav.dart';
// // import 'package:mandobk/persintation/NavgationBottom/nav.dart';
// import 'package:mandobk/widget/CustonTextFaild.dart';
// import 'package:mandobk/widget/commn_btn.dart';
// import 'package:easy_localization/easy_localization.dart';

// class SignUpProvider extends StatefulWidget {
//   @override
//   _SignUpProviderState createState() => _SignUpProviderState();
// }

// class _SignUpProviderState extends State<SignUpProvider> {
//   TextEditingController _usernameController = TextEditingController();
//   TextEditingController _phoneController = TextEditingController();
//   TextEditingController _emailControllerl = TextEditingController();
//   TextEditingController _cityController = TextEditingController();
//   TextEditingController _locationController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: CustomAppBar(LocaleKeys.SignUpAssProvider.tr(), context),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // SizedBox(
//               //   height: 20,
//               // ),
//               _pickImage(),
//               // Main_text(
//               //   "قم بإضافة صورة",
//               //   size: 12,
//               //   color: Colors.grey[400],
//               // ),
//               SizedBox(
//                 height: 20,
//               ),
//               _username_txtFaild(),
//               _phone_txtFaild(),
//               _email_txtFaild(),
//               _city_txtFaild(),

//               _location_txtFaild(),
//               _type_txtFaild(),
//               _discription_txtFaild(),
//               Container(
//                 height: MediaQuery.of(context).size.height * .01,
//               ),
//               // Expanded(child: Container()),
//               // Spacer(),

//               CommenButtom(
//                 color: ColorD.PURLE_BHTAN_COLOR,
//                 width: MediaQuery.of(context).size.width * .9,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.camera_alt,
//                       color: Colors.white,
//                     ),
//                     Main_text(LocaleKeys.AddMoreImage.tr(), color: Colors.white)
//                   ],
//                 ),
//                 function: () {
//                   // Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   //   return Nav();
//                   // }));
//                 },
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height * .01,
//               ),
//               Main_text(LocaleKeys.EnteryourBankDetails.tr(),
//                   color: ColorD.PURLE_txt_COLOR),
//               // Container(
//               //   height: MediaQuery.of(context).size.height * .01,
//               // ),
//               _bankName_txtFaild(),
//               _bank_account_txtFaild(),
//               _bank_number_txtFaild(),

//               _bank_Iban_txtFaild(),
//               Container(
//                 height: MediaQuery.of(context).size.height * .01,
//               ),
//               Main_text(LocaleKeys.EnteryourBankDetails.tr(),
//                   color: ColorD.PURLE_txt_COLOR),
//               // Container(
//               //   height: MediaQuery.of(context).size.height * .01,
//               // ),
//               _weekday_txtFaild(),
//               _startTime_txtFaild(),
//               _endTime_txtFaild(),
//               Container(
//                 height: MediaQuery.of(context).size.height * .01,
//               ),
//               CommenButtom(
//                 color: ColorD.PURLE_BTN_COLOR,
//                 width: MediaQuery.of(context).size.width * .9,
//                 text: LocaleKeys.SignUp.tr(),
//                 function: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) {
//                     return Nav();
//                   }));
//                 },
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height * .01,
//               ),
//             ],
//           ),
//         ),
//       ),

//       // appBar: ,
//     );
//   }

//   _pickImage() {
//     return Container(
//         // width: SizeConfig.safeBlockHorizontal * 25,
//         // height: SizeConfig.safeBlockHorizontal * 25,
//         // decoration: BoxDecoration(
//         //   borderRadius: BorderRadius.circular(100),
//         //   color: ColorD.PURLE_BTN_COLOR,
//         // ),
//         child: Image.asset(
//       R.ASSETS_ICONS_ADDPHOTO_PNG,
//       width: SizeConfig.safeBlockHorizontal * 25,
//       height: SizeConfig.safeBlockHorizontal * 25,
//     ));
//   }

//   _username_txtFaild() {
//     return CommnTextfaild(
//       controller: _usernameController,
//       hint: LocaleKeys.Name.tr(),
//       icon: R.ASSETS_ICONS_PROFILEGREY_PNG,
//     );
//   }

//   _phone_txtFaild() {
//     return CommnTextfaild(
//       controller: _phoneController,
//       hint: LocaleKeys.enterPhone.tr(),
//       icon: R.ASSETS_ICONS_PHONEGREY_PNG,
//     );
//   }

//   _discription_txtFaild() {
//     return CommnTextfaild(
//       controller: _phoneController,
//       hint: LocaleKeys.ActivityDescription.tr(),
//       icon: R.ASSETS_ICONS_ORDERGREY_PNG,
//     );
//   }

//   _bankName_txtFaild() {
//     return CommnTextfaild(
//       controller: _phoneController,
//       hint: LocaleKeys.BankName.tr(),
//       icon: R.ASSETS_ICONS_BANKGREY_PNG,
//     );
//   }

//   _bank_account_txtFaild() {
//     return CommnTextfaild(
//       controller: _phoneController,
//       hint: LocaleKeys.AcountName.tr(),
//       icon: R.ASSETS_ICONS_IDGREY_PNG,
//     );
//   }

//   _bank_number_txtFaild() {
//     return CommnTextfaild(
//       controller: _phoneController,
//       hint: LocaleKeys.AcountNumber.tr(),
//       icon: R.ASSETS_ICONS_CARDGREY_PNG,
//     );
//   }

//   _bank_Iban_txtFaild() {
//     return CommnTextfaild(
//       controller: _phoneController,
//       hint: LocaleKeys.IBANNumber.tr(),
//       icon: R.ASSETS_ICONS_NUMCARDGREY_PNG,
//     );
//   }

//   _type_txtFaild() {
//     return CommnTextfaild(
//       controller: _phoneController,
//       hint: LocaleKeys.ActivityType.tr(),
//       icon: R.ASSETS_ICONS_WORKGREY_PNG,
//     );
//   }

//   _email_txtFaild() {
//     return CommnTextfaild(
//       controller: _emailControllerl,
//       hint: LocaleKeys.Email.tr(),
//       icon: R.ASSETS_ICONS_MAILGREY_PNG,
//     );
//   }

//   _city_txtFaild() {
//     return CommnTextfaild(
//         controller: _cityController,
//         hint: LocaleKeys.City.tr(),
//         icon: R.ASSETS_ICONS_ADDRESSGREY_PNG);
//   }

//   _location_txtFaild() {
//     return CommnTextfaild(
//         controller: _locationController,
//         hint: LocaleKeys.Address.tr(),
//         icon: R.ASSETS_ICONS_LOCATIONGREY_PNG);
//   }

//   _weekday_txtFaild() {
//     return CommnTextfaild(
//         controller: _locationController,
//         hint: "يوم الاسبوع",
//         icon: R.ASSETS_ICONS_CALENDER_PNG);
//   }

//   _startTime_txtFaild() {
//     return CommnTextfaild(
//         controller: _locationController,
//         hint: "وقت بداية العمل",
//         icon: R.ASSETS_ICONS_CARMODEL_PNG);
//   }

//   _endTime_txtFaild() {
//     return CommnTextfaild(
//         controller: _locationController,
//         hint: "وقت انتهاء",
//         icon: R.ASSETS_ICONS_CARMODEL_PNG);
//   }
// }
