import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants.dart';
import '../../../global_widgets/container.dart';
import '../appbar.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        SizedBox(height: ProjectGap.main),
        _body(),
      ],
    );
  }

  _body() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _images(),
            SizedBox(height: ProjectGap.main),
            ...List.generate(
              30,
              (index) => _myContainer(
                child: Column(
                  children: [
                    _meal(),
                    Divider(height: 2),
                    _meal(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _myContainer({required Widget child}) {
    return CustomContainer(
      margin: EdgeInsets.only(bottom: ProjectGap.main),
      padding: EdgeInsets.symmetric(horizontal: ProjectGap.main),
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
