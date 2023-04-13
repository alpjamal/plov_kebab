import 'package:flutter/material.dart';

import '../../../data/models/menu.dart';
import '../../../utils/constants.dart';
import 'banner.dart';
import 'meal_category.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody(this.menu, {super.key});
  final Menu menu;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MealBanner(),
            SizedBox(height: ProjectGap.main),
            ...List.generate(
              int.parse(menu.count.toString()),
              (index) {
                String title = menu.categories![index].title!.en.toString();
                return MealCategory(menu: menu, title: title);
              },
            ),
          ],
        ),
      ),
    );
  }
}
