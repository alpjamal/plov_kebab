import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/utils/constants.dart';

import 'widgets/my_container.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static const routeName = '/settings-screen';

  @override
  Widget build(BuildContext context) {
    bool isNotificationOn = true;
    return Scaffold(
      appBar: AppBar(title: LocaleText(ProjectLocales.settings)),
      body: Column(
        children: [
          CustomContainer(
            margin: EdgeInsets.only(top: ProjectGap.main),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Language'),
                  leading: Icon(Icons.language, size: 30, color: Colors.black),
                  trailing: Icon(Icons.arrow_forward_ios, size: 18),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Notifications'),
                  leading: Icon(Icons.notifications_outlined, size: 30, color: Colors.black),
                  trailing: Switch.adaptive(
                    activeColor: ProjectColors.primary,
                    value: isNotificationOn,
                    onChanged: (value) => isNotificationOn = value,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          _logoutBtn(context),
        ],
      ),
    );
  }

  _logoutBtn(ctx) {
    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(ctx).padding.bottom),
      padding: EdgeInsets.all(ProjectGap.main),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.red),
        child: Text('Log Out', style: ProjectTextStyle.input.copyWith(fontWeight: FontWeight.bold)),
        onPressed: () {},
      ),
    );
  }
}
