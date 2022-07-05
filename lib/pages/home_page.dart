import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "starboy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: const Text("LACES"),
      ),
      body: Padding(

        padding: EdgeInsets.all(16.0),

        child: ListView.builder(
          itemCount: CatalogModel.items.length,

        itemBuilder: (context, index) {
          return Itemwidget(item: CatalogModel.items[index]);
        },),
      ),
      drawer:const  MyDrawer(),
    );
  }
}

 