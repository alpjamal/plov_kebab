import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:plov_kebab/data/models/customer_model.dart';
import 'package:plov_kebab/screens/global_widgets/button.dart';
import 'package:plov_kebab/screens/edit_profile_screen/widgets/date_field.dart';
import 'package:plov_kebab/screens/edit_profile_screen/widgets/input.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';

import '../../utils/constants.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CustomerModel customer = ModalRoute.of(context)!.settings.arguments as CustomerModel;

    final maskFormatter = MaskTextInputFormatter(
      initialText: customer.phone,
      mask: '+998 ## ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
    final nameController = TextEditingController(text: customer.name);
    final numberController = TextEditingController(text: maskFormatter.getMaskedText());

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    controller: nameController,
                    decoration: InputDecoration(hintText: 'Enter your name'),
                  ),
                ),
                CustomInputSection(
                  title: ProjectLocales.phoneNum,
                  textField: TextField(
                    controller: numberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: 'Enter you phone number'),
                    inputFormatters: [maskFormatter],
                  ),
                ),
                DateField(date: customer.dateOfBirth),
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
