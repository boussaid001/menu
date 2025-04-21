import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/panier_provider.dart';
import '../model/mbj_class_produit_panier.dart';

class WidgetProduitPanier extends StatefulWidget {
  final ProduitPanier produitPanier;
  const WidgetProduitPanier({required this.produitPanier});

  @override
  State<WidgetProduitPanier> createState() => _WidgetProduitPanierState();
}

class _WidgetProduitPanierState extends State<WidgetProduitPanier> {
  Future<void> _confirmerSuppression() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmer la suppression'),
          content: const Text('Voulez-vous supprimer ce produit du panier ?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Annuler'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Supprimer'),
              onPressed: () {
                Provider.of<PanierProvider>(context, listen: false)
                    .supprimerProduit(widget.produitPanier.id);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double subtotal = widget.produitPanier.price * widget.produitPanier.quantite;

    return Container(
      height: 165.0,
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 130.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.produitPanier.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          widget.produitPanier.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 15.0),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(32.0),
                          child: const SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 26.0,
                            ),
                          ),
                          onTap: _confirmerSuppression,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Price:"),
                      const SizedBox(width: 65),
                      Text(
                        "${widget.produitPanier.price.toStringAsFixed(2)} €",
                        style: const TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Sub total:"),
                      const SizedBox(width: 35),
                      Text(
                        "${subtotal.toStringAsFixed(2)} €",
                        style: const TextStyle(
                            fontSize: 16.0, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("Ship Free:"),
                      const Spacer(),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          child: const Icon(
                            Icons.remove,
                            color: Colors.red,
                            size: 26,
                          ),
                          onTap: () {
                            if (widget.produitPanier.quantite > 1) {
                              Provider.of<PanierProvider>(context, listen: false)
                                  .decrementerQuantite(widget.produitPanier.id);
                            } else {
                              _confirmerSuppression();
                            }
                          },
                        ),
                      ),
                      Card(
                        color: Colors.purple,
                        elevation: 12.0,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            widget.produitPanier.quantite.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          child: const Icon(
                            Icons.add,
                            color: Colors.red,
                            size: 26,
                          ),
                          onTap: () {
                            Provider.of<PanierProvider>(context, listen: false)
                                .incrementerQuantite(widget.produitPanier.id);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
