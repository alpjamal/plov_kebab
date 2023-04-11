import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/screens/registry_screen/enter_number.dart';
import 'package:plov_kebab/utils/constants.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            _lanField('O\'zbekcha', ProjectIcon.uz, context),
            _lanField('Русский', ProjectIcon.ru, context),
            _lanField('English', ProjectIcon.en, context),
          ],
        ),
      ),
    );
  }


  _lanField(String lan, String assetName, ctx) {
    return GestureDetector(
      onTap: () {
        Navigator.of(ctx).push(MaterialPageRoute(builder: (context) => RegistrationScreen()));
      },
      child: Container(
        padding: EdgeInsets.all(ProjectGap.main),
        margin: EdgeInsets.only(bottom: ProjectGap.main),
        decoration: BoxDecoration(
          color: ProjectColors.inputFill,
          borderRadius: BorderRadius.all(ProjectRadius.button),
        ),
        child: Row(
          children: [
            Image.asset(assetName, cacheWidth: 32),
            SizedBox(width: 12),
            Text(lan, style: ProjectTextStyle.input),
          ],
        ),
      ),
    );
  }
}
