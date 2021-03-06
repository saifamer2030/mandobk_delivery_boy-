import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mandobk_delivery_boy/persentaion/Auth/state/auth_store.dart';
import 'package:mandobk_delivery_boy/persentaion/introduction/ui/splash.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'data/Auth/data/auth_repo.dart';
import 'generated/codegen_loader.g.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ar')],
        path: 'assets/translations', // <-- change patch to your
        // fallbackLocale: Locale('en', 'US'),
        assetLoader: CodegenLoader(),
        startLocale: Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Injector(
         inject: [
   
          Inject(() => AuthStor(AuthRepo()), isLazy: false),
       
        ],
      builder: (context) {
        return MaterialApp(
          title: 'Flutter Demo',
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SplashPage(),
        );
      }
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [DrawerScreen(), HomeScreen()],
//       ),
//     );
//   }
// }
