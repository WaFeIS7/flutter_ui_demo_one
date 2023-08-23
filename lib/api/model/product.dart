import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final Rating rating;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id']?.toInt() ?? 0,
      title: json['title'] ?? '',
      price: json['price']?.toDouble() ?? 0.0,
      description: json['description'] ?? '',
      category: json['category'] ?? '',
      image: json['image'] ?? '',
      rating: Rating.fromJson(json["rating"]),
    );
  }

  @override
  List<Object?> get props => [id, title, price, description, image, rating];
}

class Rating extends Equatable {
  final double rate;
  final int count;
  const Rating({
    required this.rate,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      rate: json['rate']?.toDouble() ?? 0.0,
      count: json['count']?.toInt() ?? 0,
    );
  }

  Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
      };

  // String toJson() => json.encode(toMap());

  // factory Rating.fromJson(String source) => Rating.fromMap(json.decode(source));

  @override
  List<Object?> get props => [rate, count];
}
