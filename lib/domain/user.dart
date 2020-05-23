class User {
  String username;
  num id;
  String token;

  User.fromJson(Map<String, dynamic> map)
      : username = map["username"],
        id = map["id"];
}
