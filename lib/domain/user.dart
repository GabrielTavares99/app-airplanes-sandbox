class User {
  String username;
  num id;
  String token;
  List<String> roles;

  User.fromJson(Map<String, dynamic> map)
      : username = map["username"],
        id = map["id"],
        roles = map["roles"] != null ? getRoles(map) : null;

  static List<String> getRoles(Map<String, dynamic> map) {
    return map["roles"].map<String>((role) => role.toString()).toList();
  }
}
