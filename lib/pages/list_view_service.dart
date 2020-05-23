import 'package:app_master_airplanes/api/api_response.dart';
import 'package:app_master_airplanes/api/queue_api.dart';
import 'package:app_master_airplanes/domain/attendance.dart';
import 'package:flutter/material.dart';

class ListViewService extends StatefulWidget {
  @override
  _ListViewServiceState createState() => _ListViewServiceState();
}

class _ListViewServiceState extends State<ListViewService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List",
        ),
      ),
      body: _body(),
    );
  }

  _body() {
    Future<ApiResponse> response = QueueApi.getQueue();
    return FutureBuilder(
      future: response,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        var queue = snapshot.data.result;
        return _buildListView(queue);
      },
    );

//    if (response.hasError())
//      NotificationUtil.simpleDialog("Ocorreu algum erro...", context);
//    else {
//
    return _buildListView(response);
//    }
  }

  _buildListView(queue) {
    return ListView.builder(
        itemCount:
            queue.attendances.length != null ? queue.attendances.length : 0,
        itemBuilder: (context, index) {
          Attendance attendance = queue.attendances[index];
          return Text(attendance.createdAt.toString());
        });
  }
}
