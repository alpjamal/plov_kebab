import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import './screens/registry_screen/get_code.dart';
import 'package:plov_kebab/utils/theme.dart';
import 'screens/registry_screen/enter_number.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Locales.init(['en', 'ru']);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LocaleBuilder(builder: (locale) {
      return MaterialApp(
        localizationsDelegates: Locales.delegates,
        supportedLocales: Locales.supportedLocales,
        locale: locale,
        theme: ProjectTheme.light,
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (ctx) => SplashScreen(),
          RegistrationScreen.routenName: (ctx) => RegistrationScreen(),
          GetOtpCodeScreen.routeName: (ctx) => GetOtpCodeScreen(),
        },
      );
    });
  }
}
