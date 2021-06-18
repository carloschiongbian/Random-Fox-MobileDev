class ImageModel {
  String image;

  ImageModel(this.image);

  ImageModel.fromJSON(Map<String, dynamic> parsedJSON) {
    image = parsedJSON["image"];
  }
}