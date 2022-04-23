import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:unc_flutter_pokedex/api/pokeapi.dart';
import 'package:unc_flutter_pokedex/models/TypeModel.dart';
import 'package:unc_flutter_pokedex/widgets_type/type_grid.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Type> type = List.empty();

  @override
  void initState() {
    super.initState();
    getTypeFromPokeApi();
  }

  void getTypeFromPokeApi() async {
    PokeAPI.getType().then((response) {
      List<Map<String, dynamic>> data =
          List.from(json.decode(response.body)['results']);
      setState(() {
        type = data.asMap().entries.map<Type>((element) {
          element.value['id'] = element.key + 1;
          return Type.fromJson(element.value);
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
      body: TypeGrid(type: type),
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
