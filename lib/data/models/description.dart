class Description {
  String? uz;
  String? ru;
  String? en;

  Description({this.uz, this.ru, this.en});

  Description.fromJson(Map<String, dynamic> json) {
    uz = json['uz'];
    ru = json['ru'];
    en = json['en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['uz'] = uz;
    data['ru'] = ru;
    data['en'] = en;
    return data;
  }
}