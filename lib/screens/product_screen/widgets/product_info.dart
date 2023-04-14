import 'package:flutter/material.dart';

import '../../../data/models/product_model.dart';
import '../../../utils/constants.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(ProjectGap.main, 0, ProjectGap.main, ProjectGap.main),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title!.en!, style: ProjectTextStyle.appBar),
          SizedBox(height: ProjectGap.main, width: MediaQuery.of(context).size.width),
          Text(product.description!.en!, style: ProjectTextStyle.productDescription),
        ],
      ),
    );
  }
}
