import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/screens/global_widgets/danger_button.dart';
import 'package:plov_kebab/utils/constants.dart';

import 'global_widgets/container.dart';

class ManageAccountScreen extends StatelessWidget {
  const ManageAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: LocaleText(ProjectLocales.accountManagement)),
      body: Column(
        children: [
          CustomContainer(
            margin: EdgeInsets.all(ProjectGap.main),
            child: Column(
              children: [
                SizedBox(width: double.infinity),
                Image.asset(ProjectIcon.splash, height: 250),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: ProjectTextStyle.descriptionBold,
                    children: [
                      TextSpan(text: 'We hope you are not here to delete you account.\n\n'),
                      TextSpan(text: 'We are sorry to hear you\'re leaving. If you choose to continue,'),
                      TextSpan(text: 'these are the next steps:\n\n'),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: ProjectTextStyle.description,
                    children: [
                      TextSpan(text: '- Upon your confirmation, your registered addresses and'),
                      TextSpan(text: 'payment information will be deleted.\n\n'),
                      TextSpan(text: '- If you choose to delete your Ploff account, your account'),
                      TextSpan(text: 'registration data, your past orders, and your favorites are deleted\n\n'),
                      TextSpan(text: '- Please remember that if you choose to delete your Ploff account,'),
                      TextSpan(text: 'you will not be able to use other services in Ploff through application.'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          DangerButton(title: 'Log out', onPressed: () {}),
        ],
      ),
    );
  }
}
