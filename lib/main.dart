import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/data/bloc/nav_bar/nav_bar_cubit.dart';
import 'package:plov_kebab/screens/account_screen.dart';
import 'package:plov_kebab/screens/home_screen/home_screen.dart';
import 'package:plov_kebab/screens/product_screen/product_screen.dart';
import 'package:plov_kebab/screens/profile_screen/profile_screen.dart';
import 'package:plov_kebab/screens/settings_screen.dart';
import 'package:plov_kebab/utils/constants.dart';
import './screens/registry_screen/get_code.dart';
import 'package:plov_kebab/utils/theme.dart';
import 'data/bloc/initial_data/initial_data_bloc.dart';
import 'screens/registry_screen/enter_number.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Locales.init(['en', 'ru', 'uz']);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => NavBarCubit()),
        BlocProvider(create: (_) => InitialDataBloc()..add(LoadInitialData())),
      ],
      child: MyApp(),
    ),
  );
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
        initialRoute: ProjectRoute.homeScreen,
        routes: {
          ProjectRoute.splashScreen: (context) => SplashScreen(),
          ProjectRoute.registyEnterNumber: (context) => RegistrationScreen(),
          ProjectRoute.registryGetCode: (context) => GetOtpCodeScreen(),
          ProjectRoute.homeScreen: (context) => HomeScreen(),
          ProjectRoute.settings: (context) => SettingsScreen(),
          ProjectRoute.editProfile: (context) => EditProfileScreen(),
          ProjectRoute.manageAccount: (context) => ManageAccountScreen(),
          ProjectRoute.productScreen: (context) => ProductScreen(),
        },
      );
    });
  }
}
