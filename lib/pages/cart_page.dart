import 'package:flutter/material.dart';

import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(backgroundColor: Colors.transparent,
      title: "Cart".text.xl4.make(),
      centerTitle: true,
      ),
    
    );
  }
}
