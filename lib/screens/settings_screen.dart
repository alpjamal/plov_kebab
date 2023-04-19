import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/utils/constants.dart';

import '../data/bloc/auth/auth_bloc.dart';
import 'global_widgets/container.dart';
import 'global_widgets/danger_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isNotificationOn = true;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthInitial) {
          Navigator.of(context).pushNamedAndRemoveUntil(ProjectRoute.homeScreen, (route) => false);
        }
      },
      child: Scaffold(
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
            DangerButton(
              title: 'Log out',
              onPressed: () => BlocProvider.of<AuthBloc>(context).add(LogOut()),
            ),
          ],
        ),
      ),
    );
  }
}
