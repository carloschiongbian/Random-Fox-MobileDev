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
  String tempURL;
  
  static const String url = "randomfox.ca";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's See Some Foxes!"),
      ),
      body: showImage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () { fetchImage(); },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget showImage() {
    print("from ImageList.dart");
    print(tempURL);
    if(tempURL != null){
      return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.red[600])),
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        child: Image.network(tempURL),
      );
    } else {
      return Text("No images yet, please click the button!");
    }
    
  }

  fetchImage() async {  
    var response = await http.get(Uri.https(url,'/floof/'));
    var parsedJSON = jsonDecode(response.body);
    ImageModel imageModel = parsedJSON['image'];
    images.add(imageModel);
    tempURL = parsedJSON['image'];
    setState(() {})
  }
}