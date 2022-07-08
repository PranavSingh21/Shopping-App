import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor:Colors.white,
      bottomNavigationBar: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [

                "\$${catalog.price}".text.bold.xl4.make(),
                ElevatedButton(onPressed: (){}, 
                style : ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(
                    MyThemes.darkBluishColor),
                    
                    shape: MaterialStateProperty.all(StadiumBorder()),
                    ) ,
                  child:"Buy".text.make(),
                ).wh(100, 50)
              ],
              ).p32(),
      body: SafeArea(
        bottom: false,
        child: Column(
          
          children: [
            Hero(
              
          tag: Key(catalog.id.toString()),
          child: Image.network(catalog.image)
          ).h32(context
          ),
          Expanded(child: VxArc(
            height: 32.0,
            arcType: VxArcType.CONVEY,
            edge:VxEdge.TOP,
            child: Container(
              color :MyThemes.creamColor,
              width: context.screenWidth,
              child: Column(
                children: [

                catalog.name.text.xl4.bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ],
              ).py64(),
              ),
              )
              )
          ],
        ),
      ),
    );

  }
}
