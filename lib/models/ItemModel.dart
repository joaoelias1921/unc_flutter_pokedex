//classe Item, com os atributos que serão usados e os dados do JSON
class Item {
  int id;
  String name;

  Item.fromJson(Map<String, dynamic> data)
    : id = data['id'],
      name = data['name'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}