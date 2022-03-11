// ignore_for_file: null_closures, non_constant_identifier_names

class CatalogModel {
  static List<Item> items = [];

  //Get Item by ID
  Item getById(int Id) =>
      items.firstWhere((element) => element.id == Id, orElse: null);

  // Get Item by position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String? name;
  final String? description;
  final num price;
  final String? color;
  final String? imageURL;

  Item(
      {required this.id,
      this.name,
      this.description,
      required this.price,
      this.color,
      this.imageURL});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        description: map["description"],
        price: map["price"],
        color: map["color"],
        imageURL: map["imageURL"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "color": color,
        "imageURL": imageURL
      };
}
