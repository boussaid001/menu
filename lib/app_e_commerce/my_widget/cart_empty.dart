import 'package:flutter/material.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 50.0),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/emptycart.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          "Your cart is Empty",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Theme.of(context).textSelectionTheme.selectionColor,
              fontSize: 36.0,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "Vous n'avez commandé aucun artcile !!!",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Theme.of(context).textSelectionTheme.selectionColor,
              fontSize: 26.0,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 30.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(color: Colors.red),
                ),
              ),
              backgroundColor: const WidgetStatePropertyAll(Colors.red),
            ),
            child: const Text(
              'Shop Now',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
