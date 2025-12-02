class ProudactModel {
  final int id;
  final String title;
  final String image;
  final double price;
  final String discrebtion;
  final RatingModel rating;
  ProudactModel({
    required this.discrebtion,
    required this.id,
    required this.image,
    required this.price,
    required this.title,
    required this.rating,
  });

  factory ProudactModel.fromJson(Map<String, dynamic> jsonData) {
    return ProudactModel(
      discrebtion: jsonData['description'],
      id: jsonData['id'],
      image: jsonData['image'],
      price: jsonData['price'],
      title: jsonData['title'],
      rating: RatingModel.fromJson(jsonData['rating']),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({required this.count, required this.rate});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      count: jsonData['count'],
      rate: jsonData['rate'],
    );
  }
}
