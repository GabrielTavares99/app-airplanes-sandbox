import 'package:app_barbershop/pages/list_view_page.dart';
import 'package:app_barbershop/pages/second_page.dart';
import 'package:app_barbershop/pages/third_page.dart';
import 'package:app_barbershop/utils/nav_util.dart';
import 'package:app_barbershop/widgets/default_button.dart';
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
            DefaultButton(
              "ListView",
              onPressed: () => _onClickNavigator(context, ListViewPage()),
            ),
            DefaultButton(
              "Page 2",
              onPressed: () => _onClickNavigator(context, SecondPage()),
            ),
            DefaultButton(
              "Page 3",
              onPressed: () => _onClickNavigator(context, ThirdPage()),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            DefaultButton("Snack", onPressed: () => _onClickSnack()),
            DefaultButton("Dialog", onPressed: () => _onClickDialog()),
            DefaultButton("Toast", onPressed: () => _onClickToast()),
          ],
        )
      ],
    );
  }

  _img(int num) {
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

  _onClickSnack() {
    print("snake");
  }

  _onClickDialog() {
    print("DIALOG");
  }

  _onClickToast() {
    print("TOAST");
  }

  _onClickNavigator(BuildContext context, Widget page) async {
    print("XUXU");
    String s = await push(context, page);
    print(">> $s");
  }
}
