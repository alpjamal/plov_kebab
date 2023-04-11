import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/screens/registry_screen/get_code.dart';
import 'package:plov_kebab/utils/constants.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});
  static const routenName = '/registry-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(ProjectGap.main),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LocaleText(ProjectLocales.registration, style: ProjectTextStyle.registry),
            SizedBox(height: 20),
            LocaleText(ProjectLocales.number, style: ProjectTextStyle.input),
            SizedBox(height: 8),
            Expanded(child: TextField()),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(GetOtpCodeScreen.routeName);
              },
              child: LocaleText(ProjectLocales.conTinue, style: ProjectTextStyle.input),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
