//classe Ability, com os atributos que serão usados e os dados do JSON
class Ability {
  int id;
  String name;
  

  Ability.fromJson(Map<String, dynamic> data)
    : id = data['id'],
      name = data['name'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}