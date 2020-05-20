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
        TextFormField(
          style: TextStyle(
            color: Colors.orange,
          ),
          decoration: InputDecoration(
            labelText: "Login",
            labelStyle: TextStyle(
              color: Colors.pink,
              fontSize: 30,
            ),
            hintStyle: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
            hintText: "Type your username",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          obscureText: true,
          style: TextStyle(
            color: Colors.orange,
          ),
          decoration: InputDecoration(
            labelText: "Password",
            labelStyle: TextStyle(
              color: Colors.pink,
              fontSize: 30,
            ),
            hintStyle: TextStyle(
              color: Colors.blue,
              fontSize: 20,
            ),
            hintText: "Type your password",
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          child: RaisedButton(
            child: Text("Login"),
            onPressed: () => {
              _onClickLoginButton(context),
            },
          ),
        )
      ],
    );
  }

  _onClickLoginButton(BuildContext context) {
    print("login");
  }
}
