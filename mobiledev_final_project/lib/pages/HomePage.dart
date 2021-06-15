import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  
  static const String routeName = "homepage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text("i am fox"),
    ));
  }
}