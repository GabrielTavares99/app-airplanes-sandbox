import 'package:app_barbershop/domain/airplane.dart';
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
    List<Airplane> images = [
      Airplane("KC", "assets/images/hair/airplane4.jpg"),
      Airplane("A380", "assets/images/hair/airplane1.jpg"),
      Airplane("AN 225", "assets/images/hair/airplane2.jpg"),
      Airplane("B747", "assets/images/hair/airplane3.jpg"),
    ];

    return ListView.builder(
        itemCount: images.length,
        itemExtent: 250,
        itemBuilder: (BuildContext context, int index) {
          Airplane airplane = images[index];
          return _img(airplane.photoUrl);
        });
  }

  _img(String path) {
    return Image.asset(
      path,
      fit: BoxFit.fill,
    );
  }
}
