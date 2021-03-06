import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:mandobk_delivery_boy/core/SizedConfig.dart';
import 'package:mandobk_delivery_boy/core/dataUser.dart';
import 'package:mandobk_delivery_boy/core/design_utils.dart';
import 'package:mandobk_delivery_boy/generated/locale_keys.g.dart';
import 'package:mandobk_delivery_boy/persentaion/widget/commn_btn.dart';

class TermsConditions extends StatelessWidget {
  ///sorry i repate this page because its booring hhhhhhhhhhhhhhhhhhhh

  DataUser _dataUser = DataUser.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(LocaleKeys.termsAndConditions.tr(), context,
          leading: true),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: SizeConfig.blockSizeVertical * 75,
                child: SingleChildScrollView(
                  child: Main_text(
                      "يعتبر استخدامك لهذا التطبيق والخدمات المقدمة فيه موافقة صريحة منك على الالتزام بأحكام وشروط الاستخدام وجميع القوانين والأنظمة المعمول بها، وتوافق على أن تكون مسؤولاً عن ا لامتثال للقوانين المحلية والدولية المعمول بها. نحن نحتفظ بحق تحديث أو تغيير أحكام وشروط الاستخدام في أي وقت كان من دون إنذار مسبق بحيث تكون هذه التعديلات نافذة المفعول من تاريخ نشرها. ل ذلك، ندعوك لمراجعة أحكام وشروط الاستخدام كلما زرت التطبيق. في حال كما نحتفظ بحقنا بتحديث و/أو تعديل التطبيق و/أو إيقافها وبأي وقت. أنت ت قر بأننا غير مسؤولين بمواجهتك أو مواجهة أي طرف ثالث عن أي تحديث و/أو تعديل على التطبيق والخدمات لا يجوز استعمال هذا التطبيق او الخدمات المقدمة فيه إذا كان عمرك أقل من (18). أنت تقر بموجب هذا وتوافق على أن عمرك لا يقل عن السن عند إنشاء حساب شخصي، أنت توافق على تزويد معلومات صحيحة ودقيقة وحديثة وكاملة عن نفسك. لا يجوز لك استخدام عنوان بريد إلكتروني خاطئ و معلومات تعريف أخرى غير صحيحة ولا يجوز لك انتحال أي شخصية أو كيان أو غير ذلك. انت مسؤول عن أي معلومات تقدمها متعلقة بحسابك الشخصي وأي تحديث قد يطرأ عليها. ي جب أن تحافظ على أمن حسابك الشخصي وأن تشعرنا فورا باي دخول غير مصرح للحساب. نوصي بأن يتم استعمال كلمة سر قوية تستعمل فقط للتطبيق. لا يحق لك بيع أو تحويل أو ترخيص استعمال حسابك الشخصي لأي طرف ثالث دون الحصول على موافقة التطبيق الخطية المسبقة.",
                      fonthight: 2,
                      color: Colors.grey[800],
                      size: SizeConfig.blockSizeHorizontal * 3.5),
                ),
              ),
              CommenButtom(
                text: LocaleKeys.Accept.tr(),
                // function: () {
                //   if (_dataUser.getKey("provider") == "true") {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) {
                //       return SignUpProvider();
                //     }));
                //   } else {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) {
                //       return SignUpUser();
                //     }));
                //   }
                // },
              )
            ],
          ),
        ),
      ),
    );
  }
}
