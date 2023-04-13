import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';

import '../../../../utils/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: LocaleText(ProjectLocales.profile)),
      body: Column(
        children: [
          SizedBox(height: ProjectGap.main),
          CustomContainer(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Name', style: ProjectTextStyle.appBar),
              subtitle: Text('+998 90 000 00 00', style: ProjectTextStyle.input.copyWith(height: 2)),
              trailing: Icon(Icons.edit, color: Colors.grey),
              onTap: () => Navigator.of(context).pushNamed(ProjectRoute.editProfile),
            ),
          ),
          SizedBox(height: ProjectGap.main),
          CustomContainer(
            child: Column(
              children: [
                _listTile(context, Icons.location_on_outlined, 'My address', ''),
                Divider(),
                _listTile(context, Icons.pin_drop, 'Branches', ''),
                Divider(),
                _listTile(context, Icons.settings, 'Settings', ProjectRoute.settings),
                Divider(),
                _listTile(context, Icons.info_outline, 'About the service', ''),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _listTile(ctx, IconData leading, String title, String routeName) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(title),
      leading: Icon(leading, size: 30, color: Colors.black),
      trailing: Icon(Icons.arrow_forward_ios, size: 18),
      onTap: () {
        Navigator.of(ctx).pushNamed(routeName);
      },
    );
  }
}
