//classe Pokemon, com os atributos que serão usados e os dados do JSON
class Pokemon {
  int id;
  String name;
  String img;

  Pokemon.fromJson(Map<String, dynamic> data)
    : id = data['id'],
      name = data['name'],
      img = data['img'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'img': img};
}