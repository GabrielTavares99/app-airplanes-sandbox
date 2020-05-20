import 'package:app_master_airplanes/pages/home_page.dart';
import 'package:app_master_airplanes/utils/nav_util.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _tUsername = TextEditingController();

  final _tPassword = TextEditingController();

  final _formKey = GlobalKey<FormState>();

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
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          _formField(
            "Username",
            "Type your username",
            controller: _tUsername,
            validator: _validateUsername,
          ),
          SizedBox(
            height: 20,
          ),
          _formField(
            "Password",
            "Type your password",
            controller: _tPassword,
            obscureContent: true,
            validator: _validatePassword,
          ),
          SizedBox(
            height: 20,
          ),
          _buttonLogin(
            _onClickLogin,
          ),
        ],
      ),
    );
  }

  String _validateUsername(String text) {
    return text.isEmpty ? "Field must not be empty..." : null;
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

  TextFormField _formField(
    String label,
    hint, {
    controller,
    bool obscureContent: false,
    FormFieldValidator<String> validator,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureContent,
      validator: validator,
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
    if (!_formKey.currentState.validate()) return;
    String username = _tUsername.text;
    String password = _tPassword.text;
    print("USERNAME:: $username PASSWORD:: $password");
    push(context, HomePage());
  }

  String _validatePassword(String text) {
    if (text.isEmpty) return "Password must not be empty...";
    if (text.length < 5) return "Password must contain more than 5 characters";
    return null;
  }
}
