abstract class MapConvertible {
    Map<dynamic, dynamic> toMap();

    MapConvertible fromMap(Map<dynamic, dynamic> map);
}

class Item {
  final int id;
  final String name;
  final String imageUrl;
  final String description;
  final double price;

  Item(this.id, this.name, this.imageUrl, this.description, this.price);
}