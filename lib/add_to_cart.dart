import 'package:flutter/material.dart';
import 'package:new_app/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

import 'models/cart.dart';
import 'models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;

   AddToCart({Key? key, required this.catalog,}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    VxState.listen(context, to: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as Mystore).cart;

    bool isInCart = _cart.items.contains(catalog) ?? false;
    return ElevatedButton(onPressed: () {
      if(!isInCart) {
        AddMutation(catalog);

      }
    },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              MyTheme.darkblue,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            )
        ),
        child: isInCart ? Icon(Icons.done) :Icon(Icons.add_shopping_cart_rounded)
    );
  }
}