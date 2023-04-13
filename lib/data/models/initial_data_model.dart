import 'category_model.dart';

class InitialData {
  final List<CategoryModel> categories;
  final int count;

  InitialData({required this.categories, required this.count});

  factory InitialData.fromJson(Map<String, dynamic> json) {
    List<CategoryModel> categoriesList = [];
    json['categories'].forEach((v) => categoriesList.add(CategoryModel.fromJson(v)));

    return InitialData(
      categories: categoriesList,
      count: int.parse(json['count']),
    );
  }
}
