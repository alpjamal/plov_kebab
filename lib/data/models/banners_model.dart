import 'description_model.dart';

class BannersModel {
  int? count;
  List<Promos>? promos;

  BannersModel({this.count, this.promos});

  BannersModel.fromJson(Map<String, dynamic> json) {
    count = int.parse(json['count'] ?? 0);
    if (json['promos'] != null) {
      promos = <Promos>[];
      json['promos'].forEach((v) {
        promos!.add(Promos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['count'] = count;
    if (promos != null) {
      data['promos'] = promos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Promos {
  String? createdAt;
  Description? description;
  String? endTime;
  String? image;
  bool? isActive;
  String? startTime;
  Description? title;

  Promos({
    this.createdAt,
    this.description,
    this.endTime,
    this.image,
    this.isActive,
    this.startTime,
    this.title,
  });

  Promos.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    description = json['description'] != null ? Description.fromJson(json['description']) : null;
    endTime = json['end_time'];
    image = json['image'];
    isActive = json['is_active'];
    startTime = json['start_time'];
    title = json['title'] != null ? Description.fromJson(json['title']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['description'] = title != null ? description!.toJson() : null;
    data['end_time'] = endTime;
    data['image'] = image;
    data['is_active'] = isActive;
    data['start_time'] = startTime;
    data['title'] = title != null ? title!.toJson() : null;
    return data;
  }
}
