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

  @override
  String toString() {
    return 'ProduitPanier(id: $id, title: $title,    price: $price, imageUrl: $imageUrl, quantite: $quantite)';
  }
}
