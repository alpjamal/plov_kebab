import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../global_widgets/container.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double topPadding = MediaQuery.of(context).padding.top;
    return CustomContainer(
      height: 180 + topPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: topPadding),
          Text('Address'),
          SizedBox(height: ProjectGap.main),
          SizedBox(
            height: 50,
            child: TextField(
              cursorColor: ProjectColors.primary,
            ),
          ),
          SizedBox(height: ProjectGap.main),
          LimitedBox(
            maxHeight: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return _mealSection();
              },
            ),
          ),
        ],
      ),
    );
  }

  _mealSection() {
    return CustomContainer(
      margin: EdgeInsets.only(right: ProjectGap.main),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      color: ProjectColors.inputFill,
      child: Text('Meal', style: ProjectTextStyle.input),
    );
  }
}
