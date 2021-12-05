class UserModel {
  int id;
  String name;
  String email;
  String username;
  String profilePhotUrl;
  // String photoProfilePath;
  String token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.username,
    required this.profilePhotUrl,
    // required this.photoProfilePath,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      username: json['username'],
      // photoProfilePath: json['profile_photo_path'],
      profilePhotUrl: json['profile_photo_url'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'username': username,
      'profile_photo_url': profilePhotUrl,
      // 'photoProfilePath': photoProfilePath,
      'token': token,
    };
  }
}
