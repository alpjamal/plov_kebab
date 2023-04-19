class CustomerModel {
  String createdAt;
  String dateOfBirth;
  String fcmToken;
  String id;
  bool isBlocked;
  int minimalOrderPrice;
  String name;
  String phone;
  String registrationSource;
  String tgChatId;

  CustomerModel({
    required this.createdAt,
    required this.dateOfBirth,
    required this.fcmToken,
    required this.id,
    required this.isBlocked,
    required this.minimalOrderPrice,
    required this.name,
    required this.phone,
    required this.registrationSource,
    required this.tgChatId,
  });

  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      createdAt: json['created_at'] ?? '',
      dateOfBirth: json['date_of_birth'] ?? '',
      fcmToken: json['fcm_token'] ?? json['access_token'] ?? '',
      id: json['id'],
      isBlocked: json['is_blocked'],
      minimalOrderPrice: json['minimal_order_price'],
      name: json['name'],
      phone: json['phone'],
      registrationSource: json['registration_source'] ?? '',
      tgChatId: json['tg_chat_id'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['date_of_birth'] = dateOfBirth;
    data['fcm_token'] = fcmToken;
    data['id'] = id;
    data['is_blocked'] = isBlocked;
    data['minimal_order_price'] = minimalOrderPrice;
    data['name'] = name;
    data['phone'] = phone;
    data['registration_source'] = registrationSource;
    data['tg_chat_id'] = tgChatId;
    return data;
  }
}
