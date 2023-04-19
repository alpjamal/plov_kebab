import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/data/bloc/auth/auth_bloc.dart';
import 'package:plov_kebab/data/bloc/filter_category/filter_cubit.dart';
import 'package:plov_kebab/screens/about_screen.dart';
import 'package:plov_kebab/screens/account_screen.dart';
import 'package:plov_kebab/screens/branches_screen.dart';
import 'package:plov_kebab/screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:plov_kebab/screens/home_screen/home_screen.dart';
import 'package:plov_kebab/screens/my_address_screen.dart';
import 'package:plov_kebab/screens/profile_screen.dart';
import 'package:plov_kebab/screens/product_screen/product_screen.dart';
import 'package:plov_kebab/screens/registry_screen/erter_name.dart';
import 'package:plov_kebab/screens/settings_screen.dart';
import 'package:plov_kebab/utils/constants.dart';
import 'screens/registry_screen/enter_code.dart';
import 'package:plov_kebab/utils/theme.dart';
import 'data/bloc/data/data_bloc.dart';
import 'screens/registry_screen/enter_number.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Locales.init(['en', 'ru', 'uz']);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => DataBloc()..add(LoadInitialData())),
        BlocProvider(create: (_) => FilterCubit()),
        BlocProvider(create: (_) => AuthBloc()..add(LoadData())),
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
        initialRoute: ProjectRoute.splashScreen,
        routes: {
          ProjectRoute.splashScreen: (context) => SplashScreen(),
          ProjectRoute.registyEnterNumber: (context) => RegistrationScreen(),
          ProjectRoute.registryEnterCode: (context) => GetOtpCodeScreen(),
          ProjectRoute.homeScreen: (context) => HomeScreen(),
          ProjectRoute.settings: (context) => SettingsScreen(),
          ProjectRoute.editProfileScreen: (context) => EditProfileScreen(),
          ProjectRoute.manageAccount: (context) => ManageAccountScreen(),
          ProjectRoute.productScreen: (context) => ProductScreen(),
          ProjectRoute.registryEnterName: (context) => RegistryName(),
          ProjectRoute.profileScreen: (context) => ProfileScreen(),
          ProjectRoute.myAddress: (context) => MyAddressScreen(),
          ProjectRoute.branches: (context) => BranchesScreen(),
          ProjectRoute.about: (context) => AboutScreen(),
        },
      );
    });
  }
}
