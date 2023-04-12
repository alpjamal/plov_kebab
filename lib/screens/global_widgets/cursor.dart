import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class CustomCursor extends StatelessWidget {
  const CustomCursor({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: VerticalDivider(thickness: 2, color: ProjectColors.primary),
    );
  }
}
