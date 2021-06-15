import 'package:flutter/material.dart';
import 'package:mobiledev_final_project/pages/Login.dart';
import 'package:mobiledev_final_project/routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Fox',
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.white
      ),
      routes: routes,
      home: Login(),
    );
  }
}


