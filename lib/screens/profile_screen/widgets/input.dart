import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

import '../../../utils/constants.dart';

class CustomInputSection extends StatelessWidget {
  const CustomInputSection({super.key, required this.title, required this.textField});
  final String title;
  final TextField textField;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LocaleText(title, style: ProjectTextStyle.input),
        SizedBox(height: 5),
        textField,
        SizedBox(height: 15),
      ],
    );
  }
}
