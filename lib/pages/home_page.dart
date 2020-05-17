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
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
//      color: Colors.yellow,
      child: Container(
        color: Colors.green,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _welcomeMessageText(),
            _pageView(),
            _functionButtons(),
            _functionButtons(),
            _functionButtons(),
            _functionButtons(),
            _functionButtons(),
          ],
        ),
      ),
    );
  }

  Container _pageView() {
    return Container(
      height: 300,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: PageView(
        children: <Widget>[
          _img(1),
          _img(2),
          _img(3),
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

  _img(int num) {
//    return Image.network(
//        "https://i.pinimg.com/564x/26/9e/71/269e7102823b1cdd4873a2db032699c0.jpg");
    return Image.asset(
      "assets/images/hair/airplane" + num.toString() + ".jpg",
      width: 300,
      height: 300,
      fit: BoxFit.contain,
    );
  }

  _welcomeMessageText() {
    return Text(
      "Airplanes!",
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
//        fontStyle: FontStyle.italic,
        decoration: TextDecoration.none,
        decorationColor: Colors.amber,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  }
}
