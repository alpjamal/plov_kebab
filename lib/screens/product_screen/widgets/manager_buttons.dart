import 'package:flutter/material.dart';

import '../../../data/models/product_model.dart';
import '../../../utils/constants.dart';
import '../../global_widgets/add_remove_button.dart';
import '../../global_widgets/button.dart';
import '../../global_widgets/container.dart';

class ManagerButtons extends StatelessWidget {
  const ManagerButtons({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Spacer(),
          CustomContainer(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AddRemoveButton(),
                    Text('${product.outPrice} sum', style: ProjectTextStyle.productPrice),
                  ],
                ),
                SizedBox(height: ProjectGap.main),
                CustomButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  title: ProjectLocales.add,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
