import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

import '../../../utils/constants.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({super.key, required this.title, required this.hintText});
  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LocaleText(title, style: ProjectTextStyle.input),
        SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(hintText: hintText),
          cursorColor: ProjectColors.primary,
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
