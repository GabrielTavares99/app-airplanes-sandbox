import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final Function onPressed;
  final String _label;

  var showProgress;

  FormButton(this._label, {this.onPressed, this.showProgress = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: RaisedButton(
        child: showProgress
            ? Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
                ),
              )
            : Text(_label),
        onPressed: onPressed,
      ),
    );
  }
}
