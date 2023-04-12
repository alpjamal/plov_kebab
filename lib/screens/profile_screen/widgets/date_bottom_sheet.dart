import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/screens/global_widgets/button.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';
import 'package:plov_kebab/utils/constants.dart';

class DateBottomSheet extends StatelessWidget {
  const DateBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(ProjectGap.main),
            child: LocaleText(ProjectLocales.yourBirthDate, style: ProjectTextStyle.appBar),
          ),
          Divider(height: 1),
          Expanded(
            child: CupertinoDatePicker(
              onDateTimeChanged: (value) {},
              mode: CupertinoDatePickerMode.date,
              use24hFormat: true,
              initialDateTime: DateTime.now(),
            ),
          ),
          CustomButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            title: ProjectLocales.confirm,
          )
        ],
      ),
    );
  }
}
