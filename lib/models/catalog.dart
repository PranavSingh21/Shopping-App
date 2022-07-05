

import 'package:flutter/cupertino.dart';

class CatalogModel{


  static final items= [

  Item(
    id:"000000001",
    name:"Nike Air Force 1 GTX",
    desc:"Style: DO2760-206",
    price:14495,
    color: "Moon Fossil",
    image:"https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/11aba524-f7f9-4e2a-9e9d-9aa87ba8eb2e/air-force-1-gtx-shoes-60rsTr.png",

  )
];
}

class Item {

  final String id;
  final String name;
  final String desc;
  final num     price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}

