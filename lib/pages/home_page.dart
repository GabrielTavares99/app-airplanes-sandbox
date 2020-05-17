import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Airplanes",
      )),
      body: _body(context),
    );
  }

  _body(context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _welcomeMessageText(),
          _img(),
          _functionButtons()
        ],
      ),
    );
  }

  Column _functionButtons() {
    return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("ListView"),
                _button("Page 2"),
                _button("Page 3"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button("Snack"),
                _button("Dialog"),
                _button("Toast"),
              ],
            )
          ],
        );
  }

  _columnExample() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _button("Example"),
        _button("Example"),
        _button("Example"),
      ],
    );
  }

  _rowExample() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _button("Example"),
        _button("Example"),
        _button("Example"),
      ],
    );
  }

  _onClickOk() {
    print("OK FROM METHOD");
  }

  _button(String text) {
    return RaisedButton(
      onPressed: () {
        _onClickOk();
      },
      color: Colors.lightBlue,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
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
