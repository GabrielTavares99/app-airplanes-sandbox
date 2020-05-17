import 'package:app_barbershop/utils/nav_util.dart';
import 'package:app_barbershop/widgets/default_button.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Airplanes: second page",
        ),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.deepOrangeAccent,
      width: size.width,
      child: Center(
        child: _backButton(context, "BACK"),
      ),
    );
  }

  _backButton(BuildContext context, String text) {
    return DefaultButton(
      "BACK",
      onPressed: () => _onClickBackButton(context),
    );
  }

  _onClickBackButton(BuildContext context) {
    pop(context);
  }
}
