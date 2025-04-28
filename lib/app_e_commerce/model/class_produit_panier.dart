// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProduitPanier {
  String id = "";
  String title = "";
  String description = "";
  double price = 0;
  String imageUrl = "";
  int quantite = 0;
  ProduitPanier({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.quantite,
  });




  ProduitPanier copyWith({
    String? id,
    String? title,
    String? description,
    double? price,
    String? imageUrl,
    int? quantite,
  }) {
    return ProduitPanier(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      quantite: quantite ?? this.quantite,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'quantite': quantite,
    };
  }

  factory ProduitPanier.fromMap(Map<String, dynamic> map) {
    return ProduitPanier(
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      price: map['price'] as double,
      imageUrl: map['imageUrl'] as String,
      quantite: map['quantite'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProduitPanier.fromJson(String source) 
     =>  ProduitPanier.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProduitPanier(id: $id, title: $title, description: $description, price: $price, imageUrl: $imageUrl, quantite: $quantite)';
  }

  @override
  bool operator ==(covariant ProduitPanier other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.price == price &&
      other.imageUrl == imageUrl &&
      other.quantite == quantite;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      price.hashCode ^
      imageUrl.hashCode ^
      quantite.hashCode;
  }
}
