import 'package:app_master_airplanes/pages/login_page.dart';
import 'package:app_master_airplanes/utils/nav_util.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Anonymous"),
              accountEmail: Text("anonymous@gmail.com"),
              currentAccountPicture: CircleAvatar(
//              backgroundImage: AssetImage("assets/images/hair/airplane1.jpg"),
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQu9W74tCsvU8cGdGSU5wlgoDhmyn1L6v3Hk44FTjwTIzrTxBdV&usqp=CAU"),
              ),
            ),
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
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorites"),
              subtitle: Text("Your favorites airplanes"),
              onTap: () {
                print("ITEM 2");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {
                push(context, LoginPage());
              },
            )
          ],
        ),
      ),
    );
  }
}
