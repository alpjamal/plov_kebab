import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants.dart';
import '../appbar.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        SizedBox(height: ProjectGap.main),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _images(),
                SizedBox(height: ProjectGap.main),
                ...List.generate(
                  30,
                  (index) => _myContainer(
                    child: Column(
                      children: [_meal(), Divider(height: 2), _meal()],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _myContainer({required Widget child}) {
    return Container(
      margin: EdgeInsets.only(bottom: ProjectGap.main),
      padding: EdgeInsets.symmetric(horizontal: ProjectGap.main),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(ProjectRadius.main),
      ),
      child: child,
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

  _images() {
    return Container(
      padding: EdgeInsets.all(ProjectGap.main),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(ProjectRadius.main),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.all(ProjectRadius.main),
              child: Container(
                color: Colors.black12,
              ),
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
