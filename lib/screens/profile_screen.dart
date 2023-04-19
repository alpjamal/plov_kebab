import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/data/models/customer_model.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';

import '../../../../utils/constants.dart';
import 'global_widgets/list_tile.dart';

class ProfileScreen extends StatelessWidget {
  final CustomerModel? customer;
  const ProfileScreen({super.key, this.customer});

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
              title: Text(customer!.name, style: ProjectTextStyle.appBar),
              subtitle: Text(customer!.phone, style: ProjectTextStyle.input.copyWith(height: 2)),
              trailing: Icon(Icons.edit, color: Colors.grey),
              onTap: () => Navigator.of(context).pushNamed(ProjectRoute.editProfileScreen, arguments: customer),
            ),
          ),
          SizedBox(height: ProjectGap.main),
          CustomContainer(
            child: Column(
              children: [
                CustomListTile(
                  title: ProjectLocales.myAddresses,
                  icon: Icons.location_on_outlined,
                  routeName: ProjectRoute.myAddress,
                ),
                Divider(),
                CustomListTile(
                  title: ProjectLocales.branches,
                  icon: Icons.pin_drop,
                  routeName: ProjectRoute.branches,
                ),
                Divider(),
                CustomListTile(
                  title: ProjectLocales.settings,
                  icon: Icons.settings,
                  routeName: ProjectRoute.settings,
                ),
                CustomListTile(
                  title: ProjectLocales.about,
                  icon: Icons.info_outline,
                  routeName: ProjectRoute.about,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
