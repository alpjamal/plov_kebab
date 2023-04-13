import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants.dart';
import '../../global_widgets/container.dart';

class MealBanner extends StatelessWidget {
  const MealBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 200,
      child: Column(
        children: [
          Expanded(
            child: CustomContainer(
              padding: EdgeInsets.zero,
              child: CustomContainer(color: Colors.black12),
            ),
          ),
          SizedBox(height: ProjectGap.main),
          SmoothPageIndicator(
            controller: PageController(),
            count: 3,
            effect: ExpandingDotsEffect(
              dotColor: ProjectColors.inputFill,
              activeDotColor: ProjectColors.primary,
              dotHeight: 5,
              dotWidth: 10,
            ),
            onDotClicked: (index) {},
          )
        ],
      ),
    );
  }
}
