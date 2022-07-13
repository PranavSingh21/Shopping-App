import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddtoCart extends StatelessWidget {
  final Item catalog;

  AddtoCart({Key key, this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation]);

    final CartModel _cart = (VxState.store as MyStore).cart;

    

    bool isInCart = _cart.items.contains(catalog) ?? false;

    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
        
          AddMutation(catalog);
          
        }
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
        shape: MaterialStateProperty.all(StadiumBorder()),
      ),
      child: isInCart
          ? Icon(CupertinoIcons.cart_fill)
          : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
