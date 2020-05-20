import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _tUsername = TextEditingController();
  final _tPassword = TextEditingController();

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
        _formField(
          "Username",
          "Type your username",
          controller: _tUsername,
        ),
        SizedBox(
          height: 20,
        ),
        _formField(
          "Password",
          "Type your password",
          controller: _tPassword,
          obscureContent: true,
        ),
        SizedBox(
          height: 20,
        ),
        _buttonLogin(
          _onClickLogin,
        ),
      ],
    );
  }

  _buttonLogin(Function onPressed) {
    return Container(
      height: 40,
      child: RaisedButton(
        child: Text("Login"),
        onPressed: onPressed,
      ),
    );
  }

  TextFormField _formField(String label, hint,
      {controller, bool obscureContent: false}) {
    return TextFormField(
      controller: controller,
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

  _onClickLogin() {
    String username = _tUsername.text;
    String password = _tPassword.text;
    print("USERNAME:: $username PASSWORD:: $password");
  }
}
