//classe Type, com os atributos que serão usados e os dados do JSON
class Type {
  int id;
  String name;

  Type.fromJson(Map<String, dynamic> data)
    : id = data['id'],
      name = data['name'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}