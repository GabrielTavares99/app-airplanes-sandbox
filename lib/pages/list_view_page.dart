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
      Airplane("KC 390", "assets/images/hair/airplane4.jpg"),
      Airplane("A380", "assets/images/hair/airplane1.jpg"),
      Airplane("AN 225", "assets/images/hair/airplane2.jpg"),
      Airplane("B747", "assets/images/hair/airplane3.jpg"),
    ];

    return ListView.builder(
        itemCount: images.length,
        itemExtent: 250,
        itemBuilder: (BuildContext context, int index) {
          Airplane airplane = images[index];
          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              _img(airplane.photoUrl),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: EdgeInsets.all(12),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    airplane.name,
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }

  _img(String path) {
    return Image.asset(
      path,
      fit: BoxFit.fill,
    );
  }
}
