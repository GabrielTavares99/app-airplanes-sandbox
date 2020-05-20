import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Master Airplanes"),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: <Widget>[
        _formField("Username", "Type your username"),
        SizedBox(
          height: 20,
        ),
        _formField("Password", "Type your password", obscureContent: true),
        SizedBox(
          height: 20,
        ),
        _buttonLogin(context),
      ],
    );
  }

  Container _buttonLogin(BuildContext context) {
    return Container(
      height: 40,
      child: RaisedButton(
        child: Text("Login"),
        onPressed: () => {
          _onClickLoginButton(context),
        },
      ),
    );
  }

  TextFormField _formField(String label, hint, {bool obscureContent: false}) {
    return TextFormField(
      obscureText: obscureContent,
      style: TextStyle(
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 30,
        ),
        hintStyle: TextStyle(
          color: Colors.blue,
          fontSize: 20,
        ),
        hintText: hint,
      ),
    );
  }

  _onClickLoginButton(BuildContext context) {
    print("login");
  }
}
