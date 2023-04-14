import 'package:flutter/material.dart';
import 'package:plov_kebab/screens/product_screen/widgets/header.dart';
import 'package:plov_kebab/screens/product_screen/widgets/manager_buttons.dart';
import 'package:plov_kebab/screens/product_screen/widgets/product_info.dart';
import 'package:plov_kebab/screens/product_screen/widgets/product_types.dart';
import 'package:plov_kebab/utils/constants.dart';

import '../../data/models/product_model.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    final imageUrl = '${ProjectApi.imageUrl}${product.image}';
    final image = product.image!.isNotEmpty
        ? DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover)
        : DecorationImage(image: AssetImage(ProjectIcon.placeholder));
    
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Header(image: image),
          ProductInfo(product: product),
          ProductTypes(),
          ManagerButtons(product: product),
        ],
      ),
    );
  }
}
