import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/screens/global_widgets/button.dart';
import 'package:plov_kebab/screens/profile_screen/widgets/date_field.dart';
import 'package:plov_kebab/screens/profile_screen/widgets/input.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';

import '../../utils/constants.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: LocaleText(ProjectLocales.editProfile)),
      body: Column(
        children: [
          CustomContainer(
            margin: EdgeInsets.only(top: ProjectGap.main),
            child: Column(
              children: [
                CustomInputField(title: ProjectLocales.name, hintText: 'Your name'),
                CustomInputField(title: ProjectLocales.phoneNum, hintText: '+998 00 000 00 00'),
                DateField(title: ProjectLocales.birthDate),
              ],
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pushNamed(ProjectRoute.manageAccount),
            child: LocaleText(
              ProjectLocales.accountManagement,
              style: ProjectTextStyle.input.copyWith(color: ProjectColors.primary),
            ),
          ),
          Spacer(),
          CustomButton(onPressed: () => Navigator.of(context).pop(), title: ProjectLocales.confirm)
        ],
      ),
    );
  }
}
