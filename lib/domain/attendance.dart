import 'package:app_master_airplanes/domain/client.dart';

class Attendance {
  int id;
  String status;
  Client client;
  String createdAt;

  Attendance({this.id, this.status, this.client, this.createdAt});

  Attendance.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    client =
        json['client'] != null ? new Client.fromJson(json['client']) : null;
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    if (this.client != null) {
      data['client'] = this.client.toJson();
    }
    data['createdAt'] = this.createdAt;
    return data;
  }
}
