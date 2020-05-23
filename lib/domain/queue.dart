import 'package:app_master_airplanes/domain/attendance.dart';

class Queue {
  int id;
  List<Attendance> attendances;

  Queue({this.id, this.attendances});

  Queue.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['attendances'] != null) {
      attendances = new List<Attendance>();
      json['attendances'].forEach((v) {
        attendances.add(new Attendance.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.attendances != null) {
      data['attendances'] = this.attendances.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
