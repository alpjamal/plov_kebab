import 'package:plov_kebab/data/models/products.dart';

import 'description.dart';

class Category {
  String? id;
  String? slug;
  String? parentId;
  String? image;
  Description? description;
  Description? title;
  String? orderNo;
  bool? active;
  List<Product>? products;

  Category({
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

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    slug = json['slug'];
    parentId = json['parent_id'];
    image = json['image'];
    description = json['description'] != null ? Description.fromJson(json['description']) : null;
    title = json['title'] != null ? Description.fromJson(json['title']) : null;
    orderNo = json['order_no'];
    active = json['active'];
    products = <Product>[];
    if (json['products'] != null) {
      json['products'].forEach((v) => products!.add(Product.fromJson(v)));
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['slug'] = slug;
    data['parent_id'] = parentId;
    data['image'] = image;
    data['description'] = description != null ? description!.toJson() : null;
    data['title'] = title != null ? title!.toJson() : null;
    data['order_no'] = orderNo;
    data['active'] = active;
    data['products'] = products != null ? products!.map((v) => v.toJson()).toList() : [];
    return data;
  }
}
