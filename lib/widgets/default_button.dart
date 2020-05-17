import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  Function onPressed;
  String text;

  Color color;

  DefaultButton(this.text, {this.onPressed, this.color: Colors.black});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      color: color,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
