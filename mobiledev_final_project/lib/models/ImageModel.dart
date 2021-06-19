class ImageModel {
  String image;
  

  ImageModel(this.image);

  ImageModel.fromJSON(Map<String, dynamic> parsedJSON) {
    /*return ImageModel(
      image: parsedJSON['image']
    ); */
    image = parsedJSON['image'];
  }
}