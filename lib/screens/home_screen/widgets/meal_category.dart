import 'package:flutter/material.dart';
import 'package:plov_kebab/data/models/category_model.dart';

import '../../../utils/constants.dart';
import '../../global_widgets/container.dart';
import 'product.dart';

class MealCategory extends StatelessWidget {
  const MealCategory({super.key, required this.category, required this.title});
  final CategoryModel category;
  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      margin: EdgeInsets.only(bottom: ProjectGap.main),
      padding: EdgeInsets.symmetric(horizontal: ProjectGap.main),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: ProjectTextStyle.appBar.copyWith(height: 2),
          ),
          ...List.generate(category.products!.length, (index) {
            return Product(product: category.products![index]);
          }),
        ],
      ),
    );
  }
}
