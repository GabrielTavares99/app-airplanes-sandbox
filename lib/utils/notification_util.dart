import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NotificationUtil {
  static defaultToast(String text) {
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.white,
      gravity: ToastGravity.CENTER,
      textColor: Colors.black,
    );
  }

  static simpleDialog(String text, context, {message}) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return WillPopScope(
            onWillPop: () async => false,
            child: AlertDialog(
              title: Text(
                text,
              ),
              content: Text(message),
              actions: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("OK"),
                )
              ],
            ),
          );
        });
  }
}
