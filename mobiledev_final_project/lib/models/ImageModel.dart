class ImageModel {
  String image;
  

  ImageModel({this.image});

  factory ImageModel.fromJSON(Map<String, dynamic> parsedJSON) {
    return ImageModel(
      image: parsedJSON['image']
    );
  }
}