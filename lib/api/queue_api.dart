import 'dart:convert';

import 'package:app_master_airplanes/domain/queue.dart';
import 'package:http/http.dart' as http;

import 'api_response.dart';

class QueueApi {
  static Future<ApiResponse<Queue>> getQueue() async {
    try {
      var url = 'http://192.168.100.22:8080/barber/queue?barberId=4';

      var response = await http.get(url);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      Map mapResponse = json.decode(response.body);

      if (response.statusCode != 200)
        return ApiResponse.error("ERROR TO GET QUEUE INFO");
      var queue = Queue.fromJson(mapResponse);
      return ApiResponse.ok(queue);
    } catch (error, exception) {
      print("ERROR TO GET QUEUE INFO $error > $exception");
      return ApiResponse.error("Error... Try after");
    }
  }
}
