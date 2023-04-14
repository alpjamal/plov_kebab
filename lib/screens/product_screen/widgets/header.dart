import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../global_widgets/back_button.dart';
import '../../global_widgets/container.dart';
import '../../global_widgets/share_button.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.image});

  final DecorationImage image;

  @override
  Widget build(BuildContext context) {
    double topSafeArea = MediaQuery.of(context).padding.top;

    return Container(
      margin: EdgeInsets.only(top: topSafeArea),
      height: 200,
      decoration: BoxDecoration(image: image),
      child: Column(
        children: [
          CustomContainer(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBackButton(),
                ShareButton(),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: ProjectGap.main,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: ProjectRadius.main),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
