import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../global_widgets/container.dart';

class ProductTypes extends StatelessWidget {
  const ProductTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      margin: EdgeInsets.only(top: ProjectGap.main),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Type', style: ProjectTextStyle.appBar.copyWith(fontSize: 18)),
          SizedBox(height: ProjectGap.main, width: double.infinity),
        ],
      ),
    );
  }
}
