import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({super.key, required this.title, required this.assetName, required this.onTap});
  final String title;
  final String assetName;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(ProjectGap.main),
        margin: EdgeInsets.only(bottom: ProjectGap.main),
        decoration: BoxDecoration(
          color: ProjectColors.inputFill,
          borderRadius: BorderRadius.all(ProjectRadius.button),
        ),
        child: Row(
          children: [
            Image.asset(assetName, cacheWidth: 32),
            SizedBox(width: 12),
            Text(title, style: ProjectTextStyle.input),
          ],
        ),
      ),
    );
  }
}
