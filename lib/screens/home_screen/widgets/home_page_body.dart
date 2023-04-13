import 'package:flutter/material.dart';
import 'package:plov_kebab/data/models/banners_model.dart';

import '../../../data/models/initial_data_model.dart';
import '../../../utils/constants.dart';
import 'banner.dart';
import 'meal_category.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key, required this.initialData, required this.banner});
  final InitialData initialData;
  final BannersModel? banner;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            if (banner?.count != 0 && banner != null) ...[
              MealBanner(),
              SizedBox(height: ProjectGap.main),
            ],
            ...List.generate(
              initialData.categories.length,
              (index) {
                String title = initialData.categories[index].title!.en.toString();
                return MealCategory(category: initialData.categories[index], title: title);
              },
            ),
          ],
        ),
      ),
    );
  }
}
