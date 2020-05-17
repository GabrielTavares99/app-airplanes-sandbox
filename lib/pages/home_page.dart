import 'package:app_barbershop/pages/second_page.dart';
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
      color: Colors.green,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _welcomeMessageText(),
          _pageView(),
          _functionButtons(context),
        ],
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

  Column _functionButtons(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context, "ListView"),
            _button(context, "Page 2"),
            _button(context, "Page 3"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button(context, "Snack"),
            _button(context, "Dialog"),
            _button(context, "Toast"),
          ],
        )
      ],
    );
  }

  _columnExample(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _button(context, "Example"),
        _button(context, "Example"),
        _button(context, "Example"),
      ],
    );
  }

  _rowExample(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _button(context, "Example"),
        _button(context, "Example"),
        _button(context, "Example"),
      ],
    );
  }

  _onClickOk(BuildContext context) {
    print("OK FROM METHOD");
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return SecondPage();
    }));
  }

  _button(BuildContext context, String text) {
    return RaisedButton(
      onPressed: () {
        _onClickOk(context);
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
