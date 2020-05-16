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
      color: Colors.green,
      child: Center(
        child: _welcomeMessageText(),
      ),
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
