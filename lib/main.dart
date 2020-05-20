import 'package:app_master_airplanes/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BarberShop());
}

class BarberShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remove debugger banner
      theme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.dark,
//        scaffoldBackgroundColor: Colors.white10,
      ),
      home: LoginPage(),
    );
  }
}
