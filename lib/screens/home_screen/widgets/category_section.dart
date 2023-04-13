import 'package:flutter/material.dart';

import '../../../data/models/menu.dart';
import '../../../utils/constants.dart';
import '../../global_widgets/container.dart';

class CategorySection extends StatelessWidget {
  const CategorySection(this.menu, {super.key});
  final Menu menu;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: int.parse(menu.count.toString()),
        itemBuilder: (context, index) {
          String title = menu.categories![index].title!.en.toString();
          return CustomContainer(
            margin: EdgeInsets.only(right: ProjectGap.main),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            color: ProjectColors.inputFill,
            child: Text(title, style: ProjectTextStyle.input),
          );
        },
      ),
    );
  }
}
