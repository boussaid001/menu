import 'dart:convert';

class ProduitFavori {
  String id;
  String title;
  String description;
  double price;
  String imageUrl;

  ProduitFavori({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

  factory ProduitFavori.fromMap(Map<String, dynamic> map) {
    return ProduitFavori(
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      price: map['price'] as double,
      imageUrl: map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProduitFavori.fromJson(String source) => 
      ProduitFavori.fromMap(json.decode(source) as Map<String, dynamic>);
} 