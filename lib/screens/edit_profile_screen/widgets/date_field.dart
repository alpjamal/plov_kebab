import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/screens/edit_profile_screen/widgets/date_bottom_sheet.dart';

import '../../../utils/constants.dart';
import '../../global_widgets/container.dart';

class DateField extends StatelessWidget {
  const DateField({super.key, required this.date});
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LocaleText(ProjectLocales.birthDate, style: ProjectTextStyle.input),
        SizedBox(height: 5),
        GestureDetector(
          onTap: () => _showDatePicker(context),
          child: CustomContainer(
            padding: EdgeInsets.symmetric(vertical: 0),
            color: ProjectColors.inputFill,
            child: Center(
              child: ListTile(
                title: LocaleText(
                  date.isNotEmpty ? date : ProjectLocales.enterBirthDate,
                  style: ProjectTextStyle.input.copyWith(color: Colors.black54),
                ),
                trailing: Icon(Icons.date_range),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _showDatePicker(ctx) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: ctx,
      builder: (context) {
        return DateBottomSheet();
      },
    );
  }
}
