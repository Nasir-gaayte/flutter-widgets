class UserModel {
  String email;
  String token;
  UserModel({required this.email, required this.token});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      token: json['token'],
    );
  }
}
