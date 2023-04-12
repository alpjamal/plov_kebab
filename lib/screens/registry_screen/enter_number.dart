import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';
import 'package:plov_kebab/utils/constants.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../global_widgets/button.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          CustomContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LocaleText(ProjectLocales.registration, style: ProjectTextStyle.registry),
                SizedBox(height: 20),
                LocaleText(ProjectLocales.number, style: ProjectTextStyle.input),
                SizedBox(height: 8),
                TextField(
                  controller: numberController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [maskFormatter],
                ),
              ],
            ),
          ),
          Spacer(),
          CustomButton(
            onPressed: () {
              Navigator.of(context).pushNamed(ProjectRoute.registryGetCode);
            },
            title: context.localeString(ProjectLocales.conTinue),
          ),
        ],
      ),
    );
  }
}
