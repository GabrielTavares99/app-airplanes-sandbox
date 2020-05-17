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
    List<Image> images = [
      _img("assets/images/hair/airplane4.jpg"),
      _img("assets/images/hair/airplane1.jpg"),
      _img("assets/images/hair/airplane2.jpg"),
      _img("assets/images/hair/airplane3.jpg"),
    ];

    return ListView.builder(
        itemCount: images.length,
        itemExtent: 250,
        itemBuilder: (BuildContext context, int index) {
          return images[index];
        });
  }

  _img(String path) {
    return Image.asset(
      path,
      fit: BoxFit.fill,
    );
  }
}
