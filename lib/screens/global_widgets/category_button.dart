import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plov_kebab/data/bloc/filter_category/filter_cubit.dart';

import '../../utils/constants.dart';
import 'container.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, state) {
        state = state as FilterLoaded;
        final isSelected = state.selectedCategories.contains(title);
        return GestureDetector(
          onTap: () {
            BlocProvider.of<FilterCubit>(context).selectCategory(title);
          },
          child: CustomContainer(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            color: isSelected ? ProjectColors.primary : ProjectColors.inputFill,
            child: Text(title, style: ProjectTextStyle.input),
          ),
        );
      },
    );
  }
}
