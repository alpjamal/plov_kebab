import 'category.dart';

class Menu {
  List<Category>? categories;
  String? count;

  Menu({this.categories, this.count});

  Menu.fromJson(Map<String, dynamic> json) {
    categories = <Category>[];
    if (json['categories'] != null) {
      json['categories'].forEach((v) => categories!.add(Category.fromJson(v)));
    }
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['categories'] = categories != null ? categories!.map((v) => v.toJson()).toList() : [];
    data['count'] = count;
    return data;
  }
}
