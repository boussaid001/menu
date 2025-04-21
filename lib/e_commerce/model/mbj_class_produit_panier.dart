class ProduitPanier {
  final String id;
  final String title;
  final double price;
  final String imageUrl;
  int quantite;

  ProduitPanier({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    this.quantite = 1,
  });
} 