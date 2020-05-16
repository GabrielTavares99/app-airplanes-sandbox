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
        primaryColor: Colors.red
      ),
      home: HomePage(),
    );
  }

  home(){
    return Scaffold(
      appBar: AppBar(
          title: Text("Baby Barbershop")
      ),
      body: Container(
        color: Colors.lightBlue,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Baby Barbershop")
      ),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}

