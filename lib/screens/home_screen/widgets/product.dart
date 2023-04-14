import 'package:flutter/material.dart';
import 'package:plov_kebab/data/models/product_model.dart';

import '../../../utils/constants.dart';

class Product extends StatelessWidget {
  const Product({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    String imageUrl = '${ProjectApi.imageUrl}${product.image}';

    return Column(
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed(ProjectRoute.productScreen, arguments: product),
          child: Container(
            color: Colors.transparent,
            margin: EdgeInsets.symmetric(vertical: ProjectGap.main),
            height: 80,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.title!.en!, style: ProjectTextStyle.productTitle),
                      SizedBox(height: 6),
                      Text(product.description!.en!, style: ProjectTextStyle.productDescription),
                      Spacer(),
                      Text('${product.outPrice} sum', style: ProjectTextStyle.productPrice),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(ProjectRadius.main),
                  child: SizedBox(
                    width: 80,
                    height: 80,
                    child: product.image!.isEmpty
                        ? Image.asset(ProjectIcon.placeholder, color: Colors.grey)
                        : Image.network(imageUrl, fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(height: 2),
      ],
    );
  }
}
