import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/screens/global_widgets/button.dart';

import '../../utils/constants.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: LocaleText(ProjectLocales.myAddresses)),
      body: Column(
        children: [
          Spacer(),
          Column(
            children: [
              Image.asset(ProjectIcon.emptyAddress, height: 200),
              SizedBox(height: 20),
              LocaleText(ProjectLocales.noneAddresses),
            ],
          ),
          Spacer(),
          CustomButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            title: ProjectLocales.addAddress,
          )
        ],
      ),
    );
  }
}
