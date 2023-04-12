import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

import '../../utils/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.title});
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      padding: EdgeInsets.all(ProjectGap.main),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: ProjectColors.primary,
        ),
        onPressed: onPressed,
        child: Text(
          context.localeString(title),
          style: ProjectTextStyle.input.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
