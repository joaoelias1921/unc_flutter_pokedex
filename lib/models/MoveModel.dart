//classe Move, com os atributos que serão usados e os dados do JSON
class Move {
  int id;
  String name;

  Move.fromJson(Map<String, dynamic> data)
    : id = data['id'],
      name = data['name'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}