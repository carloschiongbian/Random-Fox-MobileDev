import 'package:mobiledev_final_project/models/ImageModel.dart';
import 'package:flutter/material.dart';
class ImageList extends StatelessWidget {
  final ImageModel images;
  final int count;
  
  ImageList({
              this.images,
              this.count
            });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(  
      itemCount: count,
      itemBuilder: (context, int index) {
        return Column(
          children: [
            // showImage(this.images),
          ],
        );
      }
    );
  }

  
}