import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_app/home_detail_page.dart';
import 'package:new_app/utils/routes.dart';
import 'package:new_app/widgets/theme.dart';
import 'dart:convert';
import 'add_to_cart.dart';
import 'models/cart.dart';
import 'models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
    await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cardColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, Routes.cartRoute),
      child: Icon(Icons.shopping_cart),

      backgroundColor: MyTheme.darkblue,),

          body: SafeArea(
            child: Container(
              padding: Vx.m32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CatalogHeader(),
                  if(CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
                    CatalogList().py12().expand()
                  else
                    CircularProgressIndicator().centered().expand()
                ]
              ),
            ),
          ),

    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Catalog App".text.xl5.bold.color(MyTheme.darkblue).make(),
          15.heightBox,
          "Trending Products".text.xl.make(),
          15.heightBox,
        ]
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CatalogModel.items.length,
      itemBuilder: (context,index){
          final catalog = CatalogModel.items[index];
          return InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailPage(catalog: catalog,))),
              child: CatalogItem(catalog: catalog));
      },
    );


  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(
              catalog.image,
            ).box.rounded.p8.color(MyTheme.grey).make().p16().w40(context),
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.bold.make(),
              catalog.desc.text.textStyle(context.captionStyle).make(),

              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  AddToCart(catalog: catalog),
                ],
              )
            ]
          ),

          )
        ],

      )
    ).white.rounded.square(150).make().py16();
  }
}





