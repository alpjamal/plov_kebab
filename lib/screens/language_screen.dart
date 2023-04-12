import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/screens/registry_screen/enter_number.dart';
import 'package:plov_kebab/screens/global_widgets/language_card.dart';
import 'package:plov_kebab/utils/constants.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(ProjectGap.main),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Image.asset(ProjectIcon.splash, width: 150),
            SizedBox(height: 50),
            LocaleText('select_lang', style: ProjectTextStyle.input),
            SizedBox(height: ProjectGap.main),
            LanguageCard(title: 'O\'zbekcha', assetName: ProjectIcon.uz, onTap: () => _onTap(context)),
            LanguageCard(title: 'Русский', assetName: ProjectIcon.ru, onTap: () => _onTap(context)),
            LanguageCard(title: 'English', assetName: ProjectIcon.en, onTap: () => _onTap(context)),
          ],
        ),
      ),
    );
  }

  _onTap(ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (context) => RegistrationScreen()));
  }
}
