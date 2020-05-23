import 'dart:convert';

import 'package:app_master_airplanes/domain/user.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  static Future<User> login(username, password) async {
    var url = 'http://192.168.100.22:8080/login';
    var params = {'username': username, 'password': password};
    var headers = {"Content-Type": "application/json"};
    var body = json.encode(params);
    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 401) return null;
    Map mapResponse = json.decode(response.body);
    var user = User.fromJson(mapResponse);
    return user;
  }
}
