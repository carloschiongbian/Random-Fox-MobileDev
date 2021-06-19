class ImageModel {
  String image;
  String url;
  

  ImageModel(this.image, this.url);

  ImageModel.fromJSON(Map<String, dynamic> parsedJSON) {
    url = image = parsedJSON['image'];
  }
}