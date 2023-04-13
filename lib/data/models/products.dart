import 'description.dart';

class Product {
  String? id;
  int? outPrice;
  String? currency;
  String? string;
  String? type;
  List<String>? categories;
  String? brandId;
  String? rateId;
  String? image;
  bool? activeInMenu;
  bool? hasModifier;
  String? fromTime;
  String? toTime;
  bool? offAlways;
  dynamic gallery;
  Description? title;
  Description? description;
  bool? active;
  String? iikoId;
  String? jowiId;

  Product(
      {this.id,
      this.outPrice,
      this.currency,
      this.string,
      this.type,
      this.categories,
      this.brandId,
      this.rateId,
      this.image,
      this.activeInMenu,
      this.hasModifier,
      this.fromTime,
      this.toTime,
      this.offAlways,
      this.gallery,
      this.title,
      this.description,
      this.active,
      this.iikoId,
      this.jowiId});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    outPrice = json['out_price'];
    currency = json['currency'];
    string = json['string'];
    type = json['type'];
    categories = json['categories'].cast<String>();
    brandId = json['brand_id'];
    rateId = json['rate_id'];
    image = json['image'];
    activeInMenu = json['active_in_menu'];
    hasModifier = json['has_modifier'];
    fromTime = json['from_time'];
    toTime = json['to_time'];
    offAlways = json['off_always'];
    gallery = json['gallery'];
    title = json['title'] != null ? Description.fromJson(json['title']) : null;
    description = json['description'] != null ? Description.fromJson(json['description']) : null;
    active = json['active'];
    iikoId = json['iiko_id'];
    jowiId = json['jowi_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['out_price'] = outPrice;
    data['currency'] = currency;
    data['string'] = string;
    data['type'] = type;
    data['categories'] = categories;
    data['brand_id'] = brandId;
    data['rate_id'] = rateId;
    data['image'] = image;
    data['active_in_menu'] = activeInMenu;
    data['has_modifier'] = hasModifier;
    data['from_time'] = fromTime;
    data['to_time'] = toTime;
    data['off_always'] = offAlways;
    data['gallery'] = gallery;
    data['title'] = title != null ? title!.toJson() : null;
    data['description'] = description != null ? description!.toJson() : null;
    data['active'] = active;
    data['iiko_id'] = iikoId;
    data['jowi_id'] = jowiId;
    return data;
  }
}
