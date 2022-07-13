import 'package:flutter_application_1/models/catalog.dart';

class CartModel {
  static final cartModel = CartModel._internal();

  CartModel._internal();

  factory CartModel() => cartModel;
  // catallof field

  CatalogModel _catalog;

// collection of IDs - store Ids of each item

  final List<int> _itemIds = [];

// Get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);

    _catalog = newCatalog;
  }

  // get item in the cart

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // get total price

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}