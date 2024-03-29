import 'package:flutter/material.dart';



import 'package:flutter_application_1/models/catalog.dart';

class  Itemwidget extends StatelessWidget {
   
final Item item;

  const Itemwidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
   
      return  Card(
        child: ListTile(
          leading:Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(item.price.toString(),
          textScaleFactor: 1.5,
          style: const TextStyle(  color: Colors.deepPurple,
          fontWeight : FontWeight.bold,
          ),
          ),
         
        ),
      );
 
  }
}