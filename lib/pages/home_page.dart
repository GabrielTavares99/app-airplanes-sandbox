import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Baby Barbershop",
      )),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.grey,
      child: Center(
        child: _button(),
      ),
    );
  }

  _onClickOk() {
    print("OK FROM METHOD");
  }

  _button() {
    return RaisedButton(
      onPressed: () {
        _onClickOk();
      },
      color: Colors.lightBlue,
      child: Text(
        "THIAGO",
        style: TextStyle(
          fontSize: 30,
          color: Colors.amber,
        ),
      ),
    );
  }

  _img() {
//    return Image.network(
//        "https://i.pinimg.com/564x/26/9e/71/269e7102823b1cdd4873a2db032699c0.jpg");
    return Image.asset(
      "assets/images/hair/hair1.jpg",
      width: 300,
      height: 300,
      fit: BoxFit.contain,
    );
  }

  _welcomeMessageText() {
    return Text(
      "Bem vindo!",
      style: TextStyle(
        fontSize: 30,
        color: Colors.red,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.amber,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  }
}
