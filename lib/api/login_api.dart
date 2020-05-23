import 'dart:convert';

import 'package:app_master_airplanes/api/api_response.dart';
import 'package:app_master_airplanes/domain/user.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  static Future<ApiResponse<User>> login(username, password) async {
    try {
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
      Map mapResponse = json.decode(response.body);

      if (response.statusCode == 401)
        return ApiResponse.error(mapResponse["message"]);
      var user = User.fromJson(mapResponse);
      return ApiResponse.ok(user);
    } catch (error, exception) {
      print("ERROR TO LOGIN $error > $exception");
    }
    return ApiResponse.error("Error to login... Try after");
  }
}
