import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobiledev_final_project/models/ImageModel.dart';
import 'package:mobiledev_final_project/widgets/ImageList.dart';

import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  
  static const String routeName = "homepage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  List<ImageModel> images = [];
  
  static const String url = "randomfox.ca";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's See Some Foxes!"),
        automaticallyImplyLeading: false,
        leading: IconButton (
          icon: Icon(Icons.logout), 
          onPressed: () { 
            Navigator.pop(context); 
          },
        ),
      ),
      body: ImageList(images),
      floatingActionButton: FloatingActionButton(
        onPressed: () { fetchImage(); },
        child: Icon(Icons.add),
      ),
    );
  }

  void fetchImage() async {
    var response = await http.get(Uri.https(url,'/floof/'));
    dynamic parsedJSON = json.decode(response.body);
    ImageModel imageModel = ImageModel.fromJSON(parsedJSON);
    images.add(imageModel);
    setState(() {});
  }

   
}