class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final int? id;
  final String? name;
  final String? description;
  final num? price;
  final String? color;
  final String? imageURL;

  Item(
      {this.id,
      this.name,
      this.description,
      this.price,
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
