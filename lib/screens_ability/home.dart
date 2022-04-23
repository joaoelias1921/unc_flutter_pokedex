import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/AbilityModel.dart';
import 'package:unc_flutter_pokedex/widgets_ability/ability_list.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Ability> ability = List.empty();

  @override
  void initState() {
    super.initState();
    getAbilityFromPokeApi();
  }

  void getAbilityFromPokeApi() async {
    PokeAPI.getAbility().then((response) {
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        ability = data.asMap().entries.map<Ability>((element) {
          element.value['id'] = element.key + 1;
          return Ability.fromJson(element.value);
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {  //construindo um componente
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokedex"),
      ),
      body: AbilityList(ability: ability),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(
          Icons.share_rounded,
        ),
      ),
    );
  }
}
