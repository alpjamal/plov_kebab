import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class DangerButton extends StatelessWidget {
  const DangerButton({super.key, required this.onPressed, required this.title});
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      padding: EdgeInsets.all(ProjectGap.main),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: ProjectColors.primary,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: ProjectTextStyle.input.copyWith(fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ),
    );
  }
}
