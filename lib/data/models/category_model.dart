import 'package:plov_kebab/data/models/product_model.dart';

import 'description_model.dart';

class CategoryModel {
  String? id;
  String? slug;
  String? parentId;
  String? image;
  Description? description;
  Description? title;
  String? orderNo;
  bool? active;
  List<ProductModel>? products;

  CategoryModel({
    this.id,
    this.slug,
    this.parentId,
    this.image,
    this.description,
    this.title,
    this.orderNo,
    this.active,
    this.products,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    parentId = json['parent_id'];
    image = json['image'];
    description = json['description'] != null ? Description.fromJson(json['description']) : null;
    title = json['title'] != null ? Description.fromJson(json['title']) : null;
    orderNo = json['order_no'];
    active = json['active'];
    products = <ProductModel>[];
    if (json['products'] != null) {
      json['products'].forEach((v) => products!.add(ProductModel.fromJson(v)));
    }
  }
}
