import 'package:flutter/material.dart';
import 'package:projetgl1/e_commerce/model/class_produit.dart';


class WidgetProduit extends StatefulWidget {
  Produit produit;

  WidgetProduit({super.key, required this.produit});

  @override
  _WidgetProduitState createState() => _WidgetProduitState();
}

class _WidgetProduitState extends State<WidgetProduit> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 240,
        // height: 10,
        /*decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red[100],
        ),*/
        child: Column(
          children: [
            Stack(
              children: [
                // ClipRRect(
                //  borderRadius: BorderRadius.circular(20),
                //child:
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/detailproduit',
                        arguments: widget.produit,
                      );
                    },
                    child: Image.network(widget.produit.imageUrl,
                        fit: BoxFit.cover),
                  ),
                ),
                //),
                const Badge(
                  label: Text(
                    'New',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.purple,
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(left: 5),
              margin: const EdgeInsets.only(left: 5, bottom: 2, right: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    widget.produit.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      widget.produit.price.toString(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Quantity:" + widget.produit.quantity.toString(),
                        style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
