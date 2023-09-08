class TourModel {
  String title;
  String image;
  String destination;
  String description;
  int price;
  int distance;
  TourModel({
    required this.title,
    required this.image,
    required this.destination,
    required this.description,
    required this.price,
    required this.distance,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'title': title,
      'image': image,
      'destination': destination,
      'description': description,
      'price': price,
      'distance': distance,
    };
  }

  factory TourModel.fromJson(Map<String, dynamic> map) {
    return TourModel(
      title: map['title'] as String,
      image: map['image'] as String,
      destination: map['destination'] as String,
      description: map['description'] as String,
      price: map['price'] as int,
      distance: map['distance'] as int,
    );
  }
}
