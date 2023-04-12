class UserInfoModel {
  UserInfoModel({
    required this.createdAt,
    required this.birthDate,
    required this.fcmToken,
    required this.id,
    required this.isBlocked,
    required this.minimalOrderPrice,
    required this.name,
    required this.phone,
    required this.registrarionSource,
    required this.tgChatId,
  });

  final String createdAt;
  final DateTime birthDate;
  final String fcmToken;
  final String id;
  final bool isBlocked;
  final double minimalOrderPrice;
  final String name;
  final String phone;
  final String registrarionSource;
  final String tgChatId;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) {
    return UserInfoModel(
      createdAt: json["created_at"],
      birthDate: json["date_of_birth"],
      fcmToken: json["fcm_token"],
      id: json["id"],
      isBlocked: json["is_blocked"],
      minimalOrderPrice: json["minimal_order_price"],
      name: json["name"],
      phone: json["phone"],
      registrarionSource: json["registration_source"],
      tgChatId: json["tg_chat_id"],
    );
  }
}
