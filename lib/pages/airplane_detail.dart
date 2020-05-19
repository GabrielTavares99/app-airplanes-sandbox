import 'package:app_barbershop/domain/airplane.dart';
import 'package:flutter/material.dart';

class AirplaneDetail extends StatefulWidget {
  final Airplane airplane;

  AirplaneDetail(this.airplane);

  @override
  _AirplaneDetailState createState() => _AirplaneDetailState();
}

class _AirplaneDetailState extends State<AirplaneDetail> {
  bool _favorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.widget.airplane.name,
        ),
      ),
      body: _body(context),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: _getFavoriteIcon(),
            backgroundColor: Colors.black,
            onPressed: () => _onFavoriteTab(),
          )
        ],
      ),
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
          _img(widget.airplane.photoUrl),
          Container(
            color: Colors.orange,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            child: Text(
              widget.airplane.name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(13),
            child: Text(
              widget.airplane.description,
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

  _onFavoriteTab() {
    setState(() {
      _favorite = !_favorite;
    });
  }

  _getFavoriteIcon() {
    if (_favorite) return Icon(Icons.favorite);
    return Icon(Icons.favorite_border);
  }
}
