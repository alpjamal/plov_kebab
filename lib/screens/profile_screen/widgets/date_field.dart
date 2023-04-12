import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

import '../../../utils/constants.dart';
import '../../global_widgets/container.dart';

class DateField extends StatelessWidget {
  const DateField({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LocaleText(title, style: ProjectTextStyle.input),
        SizedBox(height: 5),
        CustomContainer(
          padding: EdgeInsets.symmetric(vertical: 0),
          color: ProjectColors.inputFill,
          child: Center(
            child: ListTile(
              title: LocaleText(
                ProjectLocales.enterBirthDate,
                style: ProjectTextStyle.input.copyWith(color: Colors.black54),
              ),
              trailing: Icon(Icons.date_range),
            ),
          ),
        ),
      ],
    );
  }
}
