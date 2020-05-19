import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 35,
          ),
          _img(),
          ListTile(
            leading: Icon(Icons.airplanemode_active),
            title: Text("Militar"),
            subtitle: Text("Militar airplanes"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print("ITEM 1");
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.airplanemode_active),
            title: Text("Civil"),
            subtitle: Text("Civil airplanes"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print("ITEM 2");
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  _img() {
    return Image.asset(
      "assets/images/hair/airplane1.jpg",
      width: 60,
      height: 70,
      fit: BoxFit.contain,
    );
  }
}
