import 'package:flutter/material.dart';
import 'package:new_app/models/catalog.dart';

class CartModel{
  late CatalogModel _catalog;

  final List<int> _itemIds =[];

  CatalogModel get catalog => _catalog;


  set catalog(CatalogModel newCatalog){
    _catalog = newCatalog;
    assert(newCatalog != null);
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  num get totalPrice => items.fold(0, (total,current) => total + current.price);

  void add(Item item){
    _itemIds.add(item.id);
  }

  void remove(Item item){
    _itemIds.remove(item.id);
  }
}