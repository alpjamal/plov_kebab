import 'package:flutter/material.dart';
import './category_section.dart';
import '../../../data/models/initial_data_model.dart';
import '../../../utils/constants.dart';
import '../../global_widgets/container.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(this.data, {super.key});
  final InitialData data;

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
            child: TextField(),
          ),
          SizedBox(height: ProjectGap.main),
          CategorySection(data),
        ],
      ),
    );
  }
}
