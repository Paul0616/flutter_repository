import 'package:flutter_repository/demo/Demo.dart';
import 'package:flutter_repository/models/Store.dart';

class Cart {
  Map<String, int> _itemCounts = Map();
  final Store _store = Demo.store;

  Map<String, int> get itemCounts => _itemCounts;

  Cart() {
    _itemCounts = Map();
  }

  double get totalPrice {
    _itemCounts.entries
        ?.map((entry) {
    _store
        .itemForId(int.parse(entry.key))
        .price * (entry.value ?? 0))
        ?.fold(0, (value, element) => value + element) ??
        0;
  }

}
