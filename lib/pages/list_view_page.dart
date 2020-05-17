import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Airplanes: list view page",
        ),
      ),
      body: _body(),
    );
  }

  _body() {
    return ListView(
      itemExtent: 300,
      children: <Widget>[
        _img(4),
        _img(2),
        _img(3),
        _img(1),
      ],
    );
  }

  _img(int num) {
    return Image.asset(
      "assets/images/hair/airplane" + num.toString() + ".jpg",
      fit: BoxFit.fill,
    );
  }
}
