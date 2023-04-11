import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

import '../../../../utils/constants.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: LocaleText(ProjectLocales.profile)),
      body: Center(
        child: Text('Profile'),
      ),
    );
  }
}
