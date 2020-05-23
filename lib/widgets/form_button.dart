import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final Function onPressed;
  final String _label;

  const FormButton(this._label, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: RaisedButton(
        child: Text(_label),
        onPressed: onPressed,
      ),
    );
  }
}
