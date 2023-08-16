import 'package:flutter/material.dart';

class CatalogModel {
  static final items = [
    Item(
      id: "tan01",
      name: "iPhone 14 Pro",
      desc: "APPLE iPhone 14 Pro (Silver, 128 GB)",
      price: 119999,
      color: "#33505a",
      image: "https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/h/r/e/-original-imaghxeeme2n7hy7.jpeg?q=70",

    )
  ];
}
class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

