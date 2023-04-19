import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/data/models/customer_model.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';

import '../../../../utils/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments;
    CustomerModel? customer;
    if (data != null) {
      customer = data as CustomerModel;
    }

    return Scaffold(
      appBar: AppBar(title: LocaleText(ProjectLocales.profile)),
      body: Column(
        children: [
          SizedBox(height: ProjectGap.main),
          CustomContainer(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(customer!.name, style: ProjectTextStyle.appBar),
              subtitle: Text(customer.phone, style: ProjectTextStyle.input.copyWith(height: 2)),
              trailing: Icon(Icons.edit, color: Colors.grey),
              onTap: () => Navigator.of(context).pushNamed(ProjectRoute.editProfileScreen),
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
