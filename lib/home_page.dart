import 'package:flutter/material.dart';
import 'package:new_app/widgets/drawer.dart';
import 'package:new_app/widgets/item_widgets.dart';

import 'models/catalog.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Catalog App", style: TextStyle(color: Colors.black),),
      ),
        body:  Padding(
    padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
            itemBuilder: (context, index){
              return ItemWidget(
                item: CatalogModel.items[index],
              );
            },
        ),
        ),
      drawer: MyDrawer(),
    );
  }
}
