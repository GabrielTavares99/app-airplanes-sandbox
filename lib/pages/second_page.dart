import 'package:app_master_airplanes/utils/nav_util.dart';
import 'package:app_master_airplanes/widgets/default_button.dart';
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.favorite),
            heroTag: "1",
            onPressed: () {
              _onClickFab();
            },
          ),
          SizedBox(
            width: 8,
            height: 8,
          ),
          FloatingActionButton(
            child: Icon(Icons.favorite_border),
            heroTag: "2",
            onPressed: () {
              _onClickFab();
            },
          ),
        ],
      ),
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

  void _onClickFab() {
    print("FAB");
  }
}
