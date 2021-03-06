import 'package:app_master_airplanes/pages/list_view_page.dart';
import 'package:app_master_airplanes/pages/second_page.dart';
import 'package:app_master_airplanes/pages/third_page.dart';
import 'package:app_master_airplanes/utils/nav_util.dart';
import 'package:app_master_airplanes/widgets/default_button.dart';
import 'package:app_master_airplanes/widgets/drawer_list.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'list_view_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Airplanes",
          ),
        ),
        body: _body(context),
        drawer: DrawerList(),
      ),
    );
  }

  _body(context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.green,
      width: size.width,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _welcomeMessageText(),
          _pageView(),
          _functionButtons(),
        ],
      ),
    );
  }

  _pageView() {
    return Container(
      height: 300,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: PageView(
        children: <Widget>[
          _img(4),
          _img(1),
          _img(2),
          _img(3),
        ],
      ),
    );
  }

  _functionButtons() {
    return Builder(builder: (context) {
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
              DefaultButton(
                "SERVICE",
                onPressed: () => _onClickNavigator(context, ListViewService()),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              DefaultButton("Snack", onPressed: () => _onClickSnack(context)),
              DefaultButton("Dialog", onPressed: () => _onClickDialog(context)),
              DefaultButton("Toast", onPressed: () => _onClickToast()),
            ],
          )
        ],
      );
    });
  }

  _img(int num) {
    return Image.asset(
      "assets/images/hair/airplane" + num.toString() + ".jpg",
      width: 300,
      height: 200,
      fit: BoxFit.fill,
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

  _onClickSnack(BuildContext context) {
    print("SNACK");
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("SNACK NOTIFICATION"),
      action: SnackBarAction(
        textColor: Colors.lightGreen,
        label: "OK",
        onPressed: () {
          print("CLOSED SNACK");
        },
      ),
    ));
  }

  _onClickDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false, // NOT CLOSE CLICKING OUT
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,
            // NOT CLOSE CLICKING IN THE ARROW BACK
            child: AlertDialog(
              title: Text(
                "Airplane Dialog",
                style: TextStyle(color: Colors.pink),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text("OK"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text("CANCEL"),
                  onPressed: () {
                    print("XUX");
                  },
                ),
              ],
            ),
          );
        });
  }

  _onClickToast() {
    Fluttertoast.showToast(
      msg: "Toast is very nice",
      toastLength: Toast.LENGTH_LONG,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.pink,
      gravity: ToastGravity.CENTER,
      textColor: Colors.black,
    );
  }

  _onClickNavigator(BuildContext context, Widget page) async {
    print("XUXU");
    String s = await push(context, page);
    print(">> $s");
  }
}
