import 'package:flutter/cupertino.dart';
import 'package:mobiledev_final_project/pages/HomePage.dart';
import 'package:mobiledev_final_project/pages/Login.dart';

final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (BuildContext context) => HomePage(),
  Login.routeName: (BuildContext context) => Login()
};