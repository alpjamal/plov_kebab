import 'package:flutter/material.dart';
import 'package:plov_kebab/screens/global_widgets/category_button.dart';

import '../../../data/models/initial_data_model.dart';
import '../../../utils/constants.dart';

class CategorySection extends StatelessWidget {
  const CategorySection(this.data, {super.key});
  final InitialData data;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.categories.length,
        itemBuilder: (context, index) {
          final title = data.categories[index].title!.en.toString();
          return Container(
            margin: EdgeInsets.only(right: ProjectGap.main),
            child: CategoryButton(title: title),
          );
        },
      ),
    );
  }
}
