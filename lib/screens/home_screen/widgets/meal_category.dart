import 'package:flutter/material.dart';
import 'package:plov_kebab/data/models/menu.dart';

import '../../../utils/constants.dart';
import '../../global_widgets/container.dart';

class MealCategory extends StatelessWidget {
  const MealCategory({super.key, required this.menu, required this.title});
  final Menu menu;
  final String title;

  @override
  Widget build(BuildContext context) {

    return CustomContainer(
      margin: EdgeInsets.only(bottom: ProjectGap.main),
      padding: EdgeInsets.symmetric(horizontal: ProjectGap.main),
      child: Column(
        children: [
          Text(
            title,
            style: ProjectTextStyle.appBar.copyWith(height: 2),
            textAlign: TextAlign.left,
          ),
          SizedBox(width: double.infinity),
          _meal(),
          Divider(height: 2),
          _meal(),
        ],
      ),
    );
  }

  _meal() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: ProjectGap.main),
      color: Colors.black12,
      height: 50,
      width: double.infinity,
    );
  }
}
