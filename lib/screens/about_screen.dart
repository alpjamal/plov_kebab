import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';
import '../../utils/constants.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: LocaleText(ProjectLocales.about)),
      body: Padding(
        padding: EdgeInsets.all(ProjectGap.main),
        child: Column(
          children: [
            CustomContainer(
              padding: EdgeInsets.zero,
              child: ListTile(
                title: LocaleText(ProjectLocales.privacyPolicy, style: ProjectTextStyle.input),
                trailing: Icon(Icons.arrow_forward_ios, size: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
