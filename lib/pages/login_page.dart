import 'package:app_master_airplanes/api/login_api.dart';
import 'package:app_master_airplanes/utils/nav_util.dart';
import 'package:app_master_airplanes/utils/notification_util.dart';
import 'package:app_master_airplanes/widgets/default_text_field.dart';
import 'package:app_master_airplanes/widgets/form_button.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _tUsername = TextEditingController(text: "gabs@dev");
  final _tPassword = TextEditingController(text: "123123");

  final _focusPassword = FocusNode();
  bool _showProgress = false;

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
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[
            DefaultTextField(
              "Username",
              hint: "Type your username",
              controller: _tUsername,
              validator: _validateUsername,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              nextFocus: _focusPassword,
            ),
            SizedBox(height: 20),
            DefaultTextField(
              "Password",
              hint: "Type your password",
              controller: _tPassword,
              obscureText: true,
              validator: _validatePassword,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              focusNode: _focusPassword,
            ),
            SizedBox(height: 20),
            _showButtonOrProgress(),
          ],
        ),
      ),
    );
  }

  _showButtonOrProgress() {
    return FormButton(
      "Login",
      showProgress: _showProgress,
      onPressed: _onClickLogin,
    );
  }

  String _validateUsername(String text) {
    return text.isEmpty ? "Field must not be empty..." : null;
  }

  _onClickLogin() async {
    if (!_formKey.currentState.validate()) return;
    String username = _tUsername.text;
    String password = _tPassword.text;
    print("USERNAME:: $username PASSWORD:: $password");

    setState(() {
      _showProgress = true;
    });

    var apiResponse = await LoginApi.login(username, password);

    if (apiResponse.ok) {
      print("SUCCESS");
      push(context, HomePage(), replace: true);
    } else
      NotificationUtil.simpleDialog(
        "Ops...",
        context,
        message: apiResponse.message,
      );

    setState(() {
      _showProgress = false;
    });
  }

  String _validatePassword(String text) {
    if (text.isEmpty) return "Password must not be empty...";
    if (text.length < 5) return "Password must contain more than 5 characters";
    return null;
  }
}
