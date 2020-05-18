import 'package:app_barbershop/domain/airplane.dart';
import 'package:flutter/material.dart';

class AirplaneDetail extends StatelessWidget {
  final Airplane airplane;

  AirplaneDetail(this.airplane);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.airplane.name,
        ),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _img(airplane.photoUrl),
          Container(
            color: Colors.orange,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            child: Text(
              airplane.name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(13),
            child: Text(
              airplane.description,
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }

  _img(String path) {
    return Image.asset(
      path,
      fit: BoxFit.fill,
    );
  }
}
