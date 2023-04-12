import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:plov_kebab/screens/global_widgets/button.dart';
import 'package:plov_kebab/screens/profile_screen/widgets/date_field.dart';
import 'package:plov_kebab/screens/profile_screen/widgets/input.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';

import '../../utils/constants.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var numberController = TextEditingController(text: '+998 ');
    final maskFormatter = MaskTextInputFormatter(
      initialText: '+998 ',
      mask: '+998 ## ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
    return Scaffold(
      appBar: AppBar(title: LocaleText(ProjectLocales.editProfile)),
      body: Column(
        children: [
          CustomContainer(
            margin: EdgeInsets.only(top: ProjectGap.main),
            child: Column(
              children: [
                CustomInputSection(
                  title: ProjectLocales.name,
                  textField: TextField(
                    decoration: InputDecoration(hintText: 'Your name'),
                  ),
                ),
                CustomInputSection(
                  title: ProjectLocales.phoneNum,
                  textField: TextField(
                    controller: numberController,
                    decoration: InputDecoration(hintText: 'Enter you phone number'),
                    inputFormatters: [maskFormatter],
                  ),
                ),
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
