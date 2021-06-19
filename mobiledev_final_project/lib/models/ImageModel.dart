class ImageModel {
  String image;
  String url;
  

  ImageModel(this.image, this.url);

  ImageModel.fromJSON(Map<String, dynamic> parsedJSON) {
    /*return ImageModel(
      image: parsedJSON['image']
    ); */
    url = image = parsedJSON['image'];

  }
}